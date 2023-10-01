class AddSantaMartaAndPancronPriceToPrintingPrices < ActiveRecord::Migration[7.0]
  def change
    add_column :printing_prices, :santa_marta_price, :decimal
    add_column :printing_prices, :pancron_price, :decimal
  end
end
