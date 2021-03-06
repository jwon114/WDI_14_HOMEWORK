require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'uri'
require_relative 'db_config'
require_relative 'models/movie'
require_relative 'models/search_history'
require_relative 'models/movie_season_episode'
require 'pry'


# TODO LIST
# wrap movie text in movie listing view so text is the width of the poster
# storing movie season episodes in database? Issue with checking if all episodes are in the database, possibly add column for last updated and check in a months time then update again
# styling the season episodes in a 3 column grid


get '/' do

  	erb :index
end

get '/movie_listing/:title' do

	result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&s=#{params[:title]}")
	
	if result["Response"] == "False"
		@error = result["Error"]
		erb :error
	elsif result["Response"] == "True"
		history = SearchHistory.create(title: params[:title])
		# history = File.open("history.txt", "a")
		# history.puts(params[:movie])
		# history.close
		# check totalResults count to see if there is only one result. redirect to
		if result["totalResults"] == "1"
			redirect to("/movie/#{result['Search'][0]['imdbID']}")
		else
			@movie_listing_data = result["Search"]
		end
	end

	erb :movie_listing
end

get '/movie_listing' do
	if params[:title].empty?
		@error = "No title searched"
		erb :error
	else 
		redirect '/movie_listing/' + URI.encode(params[:title])
	end
end

get '/movie/:id' do
	# search for title in database, if present then retrieve, otherwise send http request and save to db
	movie_result = Movie.where(imdb_id: params[:id]).first

	if movie_result
		puts 'got movie from local database'
		@movie_data = movie_result
		# movie_results query returns the ratings JSON as a string. Need to parse back into JSON to loop through it
		ratings = JSON.parse movie_result.ratings
		@movie_ratings = build_ratings_images(ratings)
		@seasons = movie_result.total_seasons
	else
		result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&i=#{params[:id]}")
		if result["Response"] == "False"
			@error = result["Error"]
			erb :error
		elsif result["Response"] == "True"
			puts 'adding movie to local database'
			add_movie(result)
			movie_result = Movie.where(imdb_id: params[:id]).first
			@movie_data = movie_result
			# movie_results query returns the ratings JSON as a string. Need to parse back into JSON to loop through it
			ratings =  JSON.parse movie_result.ratings
			@movie_ratings = build_ratings_images(ratings)
			@seasons = movie_result.total_seasons
		end
	end

	erb :movie
end

get '/movie/:id/:season' do
	# episode_total = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&i=#{params[:id]}&season=#{params[:season]}")["Episodes"].count
	# episode_result = MovieSeasonEpisode.where(series_id: params[:id], season: params[:season]).order("episode")
	
	# if episode_result
	# 	1.upto(episode_total) do |episode_number|
	# 		if episode_result[episode_number][:episode] != episode_number.to_s

	# 		end
	#	end
	# 		
	# 	end
	# 	episode_result.each do |episode|
	# 		if MovieSeasonEpisode.where(episode: )
	# 	end
	# 	@episode_list = episode_result
	# else 
	# hard to store episode list because dont have logic to add episodes if they arent all in database
		episode_result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&i=#{params[:id]}&season=#{params[:season]}")
		if episode_result["Response"] == "False"
			@erorr = episode_result["Error"]
			erb :error
		elsif episode_result["Response"] == "True"
			@episode_list = episode_result["Episodes"]
		end

	# end

	erb :season_listing
end

get '/history' do

	# gets the unique last 10 rows from search_histories table
	search_history_sql = "
		SELECT title FROM (SELECT title, MAX(id) as id 
		FROM search_histories 
		GROUP BY title) 
		AS filtered_query 
		ORDER BY id desc 
		LIMIT 10;" 

	# history = File.readlines("history.txt")
	# history_filtered = history.reject { |e| e.empty? || e == "\n" }
	# @search_history = history_filtered.reverse.uniq.first(10)
	history = SearchHistory.find_by_sql(search_history_sql)
	@search_history = []
	history.each do |search|
		@search_history << search[:title]
	end

	erb :history
end

# search a tv series by checking the type="series", totalSeasons will give number or seasons, if type is series then display 
# buttons on series page to jump to the season, within season list the episodes
# use the gem will_paginate for pagination

def movie_listing_url

end

def add_movie(movie)

	movie_info = {
		title: movie["Title"],
		year: movie["Year"],
		rated: movie["Rated"],
		released: movie["Released"],
		runtime: movie["Runtime"],
		genre: movie["Genre"],
		director: movie["Director"],
		actors: movie["Actors"],
		plot: movie["Plot"],
		language: movie["Language"],
		poster: movie["Poster"],
		ratings: (JSON.generate movie["Ratings"]), # need to generate JSON because ruby parses into a hash with hash rockets
		imdb_id: movie["imdbID"],
		movie_type: movie["Type"]
	}

	if movie["Type"] == "series"
		movie_info[:total_seasons] = movie["totalSeasons"]
	end

	new_movie = Movie.create(movie_info)
end

def build_ratings_images(ratings)
	movie_ratings = []
	ratings.each do |rating|
		case rating["Source"]
			when "Internet Movie Database"
				ratings_image = "<i class='fa fa-imdb fa-5x'></i>"
				ratings_value = "<i class='fa fa-star'></i>" + rating["Value"]
			when "Rotten Tomatoes"
				if rating["Value"].gsub("%", "").to_i >= 60
					ratings_image = "<img class='ratings_icon' src='../images/fresh.png' alt=''>"
					ratings_value = rating["Value"]
				else 
					ratings_image = "<img class='ratings_icon' src='../images/rotten.png' alt=''>"
					ratings_value = rating["Value"]
				end
			when "Metacritic"
				ratings_image = "<img class='ratings_icon' src='../images/Metacritic.png' alt=''>"
				ratings_value = rating["Value"]
		end

		movie_ratings << { :image => ratings_image, :value => ratings_value }
	end
	return movie_ratings
end





