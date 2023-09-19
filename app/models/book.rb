class Book < ApplicationRecord
  belongs_to :user
  has_many :kit_books, dependent: :destroy
  has_many :printing_prices, dependent: :destroy
  accepts_nested_attributes_for :printing_prices, allow_destroy: true

  has_one :cover
  has_one :miolo
  has_one :guarda
  include PgSearch::Model

  pg_search_scope :search_by_title_and_code,
  against: [ :title, :code ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
