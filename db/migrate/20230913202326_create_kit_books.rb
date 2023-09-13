class CreateKitBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :kit_books do |t|
      t.references :book, null: false, foreign_key: true
      t.string :name
      t.float :total_price
      t.integer :budget_price

      t.timestamps
    end
  end
end
