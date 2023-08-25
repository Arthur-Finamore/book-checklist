class Book < ApplicationRecord
  belongs_to :user
  has_one :cover
  has_one :miolo
  has_one :guarda
end
