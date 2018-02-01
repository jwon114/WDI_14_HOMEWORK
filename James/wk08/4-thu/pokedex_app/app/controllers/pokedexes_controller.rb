class PokedexesController < ApplicationController

	def index
		@pokemons = Pokedex.all
	end

end
