class PokemonsController < ApplicationController

	def index
		@pokemons = Pokemon.all
	end

	def new
		@pokemons = Pokedex.all
	end

	def create
		new_pokemon = Pokemon.new
		new_pokemon.species = params[:species]
		new_pokemon.nickname = params[:nickname]
		new_pokemon.level = params[:level]
		new_pokemon.save

		redirect_to '/'
	end

	def api_show
		id = params[:pokemon_id]
		pokemon = Pokedex.find(id)
		pokemon_data = { 
			id: pokemon.id, 
			species: pokemon.species,
			height: pokemon.height,
			weight: pokemon.weight,
			image_url: pokemon.image_url
		}

		render json: pokemon_data
	end

end
