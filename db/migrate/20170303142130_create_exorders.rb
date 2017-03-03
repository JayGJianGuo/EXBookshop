class CreateExorders < ActiveRecord::Migration[5.0]
  def change
    create_table :exorders do |t|
       t.integer :total, default: 0
       t.integer :user_id
       t.string  :shipping_name
       t.string  :shipping_wechat
       t.string  :shipping_location
       t.string  :shipping_phone
      t.timestamps
    end
  end
end
