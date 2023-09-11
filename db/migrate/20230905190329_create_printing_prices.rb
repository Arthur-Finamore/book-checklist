class CreatePrintingPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :printing_prices do |t|
      t.integer :quantity
      t.decimal :ipsis_price
      t.decimal :coan_price
      t.decimal :geografica_price
      t.decimal :leograf_price
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
