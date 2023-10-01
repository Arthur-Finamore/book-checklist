class PrintingPrice < ApplicationRecord
  belongs_to :book

  validates :santa_marta_price, numericality: { greater_than_or_equal_to: 0 }
  validates :pancron_price, numericality: { greater_than_or_equal_to: 0 }

  # Atributos existentes
  validates :ipsis_price, numericality: { greater_than_or_equal_to: 0 }
  validates :coan_price, numericality: { greater_than_or_equal_to: 0 }
  validates :geografica_price, numericality: { greater_than_or_equal_to: 0 }
  validates :leograf_price, numericality: { greater_than_or_equal_to: 0 }
end
