class AddBudgetPriceToKitBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :kit_books, :budget_price, :jsonb, default: { "tipo 1" => 1500, "tipo 2" => 2500, "tipo 3" => 5000 }
  end
end
