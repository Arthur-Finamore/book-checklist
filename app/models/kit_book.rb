class KitBook < ApplicationRecord
  belongs_to :book
  has_many :itens, dependent: :destroy
end
