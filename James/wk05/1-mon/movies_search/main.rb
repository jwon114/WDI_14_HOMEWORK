require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require_relative 'db_config'
require_relative 'models/movie'
require_relative 'models/search_history'
require 'pry'

get '/' do

  	erb :index
end

get '/movie_listing' do

	result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&s=#{params[:movie]}")
	
	if result["Response"] == "False"
		@error = result["Error"]
	elsif result["Response"] == "True"
		history = SearchHistory.create(title: params[:movie])
		# history = File.open("history.txt", "a")
		# history.puts(params[:movie])
		# history.close
		# check totalResults count to see if there is only one result. redirect to
		if result["totalResults"] == "1"
			redirect to("/movie?id=#{result['Search'][0]['imdbID']}")
		else
			@movie_listing_data = result["Search"]
		end
	end

	erb :movie_listing
end

get '/movie' do
	# search for title in database, if present then retrieve, otherwise send http request and save to db
	movie_result = Movie.where(imdb_id: params[:id]).first
	if movie_result
		puts 'got movie from local database'
		@movie_data = movie_result
		# movie_results query returns the ratings JSON as a string. Need to parse back into JSON to loop through it
		ratings = JSON.parse movie_result.ratings
		@movie_ratings = build_ratings_images(ratings)
	else
		result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&i=#{params[:id]}")
		if result["Response"] == "False"
			@error = result["Error"]
		elsif result["Response"] == "True"
			# issue with getting new request, the movies.erb is mapped to the database instance variable not the http, need to consolidate into one object to send
			puts 'adding movie to local database'
			add_movie(result)
			movie_result = Movie.where(imdb_id: params[:id]).first
			@movie_data = movie_result
			# movie_results query returns the ratings JSON as a string. Need to parse back into JSON to loop through it
			ratings =  JSON.parse movie_result.ratings
			@movie_ratings = build_ratings_images(ratings)
		end
	end

	erb :movie
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

def add_movie(movie)
	movie_info = {
		title: movie["Title"],
		year: movie["Year"],
		rated: movie["Rated"],
		genre: movie["Genre"],
		released: movie["Released"],
		runtime: movie["Runtime"],
		language: movie["Language"],
		director: movie["Director"],
		actors: movie["Actors"],
		plot: movie["Plot"],
		ratings: (JSON.generate movie["Ratings"]), # need to generate JSON because ruby parses into a hash with hash rockets
		poster: movie["Poster"],
		imdb_id: movie["imdbID"]
	}

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





