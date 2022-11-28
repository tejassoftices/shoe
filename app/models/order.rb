class Order < ApplicationRecord
  belongs_to :user
  has_many :carts     #--i have written
  has_many :shoes, through: :carts

  validates :shoe_total,:discount,:final_total, numericality: true
end
