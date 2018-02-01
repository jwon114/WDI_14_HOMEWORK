class Poketype < ApplicationRecord
	has_many :pokedexes_poketypes
	has_many :pokdexes, through: :pokedexes_poketypes
end
