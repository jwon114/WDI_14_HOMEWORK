class ChangePoketypeColumn < ActiveRecord::Migration[5.1]
  def change
  	rename_column :poketypes, :type, :pokemon_type
  end
end
