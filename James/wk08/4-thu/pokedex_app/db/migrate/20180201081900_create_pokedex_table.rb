class CreatePokedexTable < ActiveRecord::Migration[5.1]
  def change
    create_table :pokedex do |t|
      t.string :species
      t.integer :height
      t.integer :weight
      t.string :image_url
      t.integer :types, array: true, default: []
    end
  end
end
