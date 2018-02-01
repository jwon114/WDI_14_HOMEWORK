class Pokedex < ApplicationRecord
	has_many :PokedexesPoketypes
	has_many :poketypes, through: :PokedexesPoketypes
end
