class ChangePokedexTypeColumn < ActiveRecord::Migration[5.1]
  def change
  	remove_column :pokedexes, :types	
  end
end
