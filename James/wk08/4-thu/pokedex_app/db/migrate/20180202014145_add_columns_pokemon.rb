class AddColumnsPokemon < ActiveRecord::Migration[5.1]
  def change
  	add_column :pokemons, :pokemon_id, :integer
  end
end
