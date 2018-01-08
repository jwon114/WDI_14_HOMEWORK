require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  	erb :index
end

get '/movies' do
	result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&t=#{params[:movie]}")
	@movie_title = result["Title"]
	@year = result["Year"]
	@rated = result["Rated"]
	@poster = result["Poster"]
	@released = result["Released"]
	@runtime = result["Runtime"]
	@actors = result["Actors"]
	@plot = result["Plot"]
	@ratings = result["Ratings"]
	# move images switching logic here and set the image url as a variable
	erb :movies
end




