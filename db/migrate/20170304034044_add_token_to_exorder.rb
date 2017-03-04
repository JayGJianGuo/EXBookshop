class AddTokenToExorder < ActiveRecord::Migration[5.0]
  def change
    add_column :exorders, :token, :string
  end
end
