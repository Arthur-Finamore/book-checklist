class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :kit_book, null: false, foreign_key: true
      t.string :item
      t.integer :quantity
      t.string :supplier
      t.float :unit_price
      t.float :total_price
      t.float :shipping
      t.string :observation

      t.timestamps
    end
  end
end
