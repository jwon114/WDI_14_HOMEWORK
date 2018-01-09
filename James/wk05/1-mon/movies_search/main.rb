require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

get '/' do
  	erb :index
end

get '/movie_listing' do
	result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&s=#{params[:movie]}")
	
	if result["Response"] == "False"
		@error = result["Error"]
	elsif result["Response"] == "True"
		@movie_listing_data = result["Search"]
	end

	erb :movie_listing
end

get '/movie' do
	result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&i=#{params[:id]}")

	if result["Response"] == "False"
		@error = result["Error"]
	elsif result["Response"] == "True"
		@movie_data = result
		@movie_ratings = []
		result["Ratings"].each do |rating|
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

			@movie_ratings << { :image => ratings_image, :value => ratings_value }
		end
	end

	erb :movie
end




