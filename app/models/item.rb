class Item < ApplicationRecord
  # ... outros atributos ...

  validates :item, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true }
  validates :total_price, :shipping, presence: true, numericality: true

  before_validation :calculate_unit_price

  private

  def calculate_unit_price
    self.unit_price = total_price.to_f / quantity if total_price.present? && quantity.present?
  end
end
