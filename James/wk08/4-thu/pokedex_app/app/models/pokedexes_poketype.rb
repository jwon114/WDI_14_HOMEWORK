class PokedexesPoketype < ApplicationRecord
	belongs_to :pokedex
	belongs_to :poketype
end