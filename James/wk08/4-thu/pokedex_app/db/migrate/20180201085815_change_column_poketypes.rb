class ChangeColumnPoketypes < ActiveRecord::Migration[5.1]
  def change
  	rename_column :poketypes, :types, :type
  end
end
