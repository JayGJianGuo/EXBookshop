class AddExbookIdToAvatar < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :exbook_id, :integer
  end
end
