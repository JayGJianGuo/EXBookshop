class AddExchangeMethodToExorder < ActiveRecord::Migration[5.0]
  def change
    add_column :exorders, :exchange_method, :string
  end
end
