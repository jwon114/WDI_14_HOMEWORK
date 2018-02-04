class PokemonsController < ApplicationController

	def index
		@pokemons = Pokemon.all
	end

	def new
		@pokemons = Pokedex.all
		@poketypes = Poketype.all
	end

	def create
		new_pokemon = Pokemon.new
		new_pokemon.species = params[:species]
		new_pokemon.nickname = params[:nickname]
		new_pokemon.level = params[:level]
		
		if new_pokemon.save
			redirect_to '/'
		end
	end

	def api_show
		pokemon = Pokedex.find(params[:pokemon_id])
		pokemon_data = { 
			id: pokemon.id, 
			species: pokemon.species,
			height: pokemon.height,
			weight: pokemon.weight,
			image_url: pokemon.image_url,
			types: pokemon.poketypes
		}

		render json: pokemon_data
	end

	def api_create
		new_pokemon = Pokemon.new
		new_pokemon.species = Pokedex.find(params[:pokemon_id]).species
		new_pokemon.nickname = params[:nickname]
		new_pokemon.level = params[:level]

		if new_pokemon.save
			render json: { result: 'Pokemon Caught'}
		end
	end

	def api_delete
		pokemon_id = Pokemon.find(params[:pokemon_id])

		if pokemon_id			
			Pokemon.delete(params[:pokemon_id])
			render json: { result: 'Pokemon Deleted', pokemon_id: params[:pokemon_id] }
		else
			render json: { result: 'Could not find Pokemon' }
		end
	end

end
