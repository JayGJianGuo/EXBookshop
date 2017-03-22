class CreateSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :sizes do |t|
      t.string :name
      t.timestamps

      add_column :products, :size_id, :integer
    end
  end
end
