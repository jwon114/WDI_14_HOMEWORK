require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  	erb :index
end

get '/movies' do
	result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&t=#{params[:movie]}")
	@movie_data = result
	
	@movie_ratings = []
	result["Ratings"].each do |rating|
		case rating["Source"]
		when "Internet Movie Database"
			ratings_image = "<i class='fa fa-imdb fa-5x'></i>"
		when "Rotten Tomatoes"
			if rating["Value"].gsub("%", "").to_i >= 60
				ratings_image = "<img class='ratings_icon' src='../images/fresh.png' alt=''>"
			else 
				ratings_image = "<img class='ratings_icon' src='../images/rotten.png' alt=''>"
			end
		when "Metacritic"
			ratings_image = "<img class='ratings_icon' src='../images/Metacritic.png' alt=''>"
		end

		@movie_ratings << { :image => ratings_image, :value => rating["Value"] }
	end

	erb :movies
end




