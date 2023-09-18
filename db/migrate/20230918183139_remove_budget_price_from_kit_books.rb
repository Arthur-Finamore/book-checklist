class RemoveBudgetPriceFromKitBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :kit_books, :budget_price, :integer
  end
end
