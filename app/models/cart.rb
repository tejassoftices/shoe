class Cart < ApplicationRecord
  belongs_to :shoe
  belongs_to :user
  belongs_to :order

  validates :size, :quantity, presence: true
end
  