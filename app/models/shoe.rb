class Shoe < ApplicationRecord
  belongs_to :category
  has_many :carts
  has_many :orders, through: :carts

  validates :brand, :category, :size, :active, presence: true
end
