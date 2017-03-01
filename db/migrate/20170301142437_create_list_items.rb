class CreateListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :list_items do |t|
       t.integer :list_id
       t.integer :exbook_id
       t.integer :quantity, default: 1
      t.timestamps
    end
  end
end
