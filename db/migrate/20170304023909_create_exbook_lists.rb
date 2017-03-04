class CreateExbookLists < ActiveRecord::Migration[5.0]
  def change
    create_table :exbook_lists do |t|
       t.integer :exorder_id
       t.string  :exbook_name
       t.integer :exbook_booktype
       t.integer :quantity
      t.timestamps
    end
  end
end
