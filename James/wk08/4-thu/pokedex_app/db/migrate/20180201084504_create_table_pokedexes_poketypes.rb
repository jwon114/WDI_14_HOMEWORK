class CreateTablePokedexesPoketypes < ActiveRecord::Migration[5.1]
  def change
    create_table :pokedexes_poketypes do |t|
      t.integer :pokedex_id
      t.integer :poketype_id
    end
  end
end
