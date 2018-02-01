Rails.application.routes.draw do

	get '/', to: 'pokemons#index'
	resources :pokemons
  	resources :pokedexes
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
