class AddImageToExbook < ActiveRecord::Migration[5.0]
  def change
    add_column :exbooks, :image, :string
  end
end
