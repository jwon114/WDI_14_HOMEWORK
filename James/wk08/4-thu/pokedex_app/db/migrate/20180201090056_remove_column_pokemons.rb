class RemoveColumnPokemons < ActiveRecord::Migration[5.1]
  def change
  	remove_column :pokemons, :string
  end
end
