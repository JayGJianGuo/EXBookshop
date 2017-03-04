class AddIsChoseToExorder < ActiveRecord::Migration[5.0]
  def change
    add_column :exorders, :is_chose, :boolean, default: false
  end
end
