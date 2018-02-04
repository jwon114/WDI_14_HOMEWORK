Rails.application.routes.draw do

	get '/', to: 'pokemons#index'

	get '/api/pokemons', to: 'pokemons#api_show'
	post '/api/pokemons', to: 'pokemons#api_create'
	delete '/api/pokemons', to: 'pokemons#api_delete'

	resources :pokemons
  	resources :pokedexes
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
