class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true, length: { maximum: 20 }
  has_many :books

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
