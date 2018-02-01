class Poketypes < ActiveRecord::Migration[5.1]
  def change
    create_table :poketypes do |t|
      t.string :types
    end
  end
end
