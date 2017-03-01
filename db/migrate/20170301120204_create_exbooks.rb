class CreateExbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :exbooks do |t|
      t.string :title
      t.text :description
      t.integer :quantity
      t.string :booktype

      t.timestamps
    end
  end
end
