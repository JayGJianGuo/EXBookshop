class RemoveExbookIdFromImage < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :exbook_id, :integer
  end
end
