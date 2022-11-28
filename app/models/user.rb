class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:trackable,
         :recoverable, :rememberable, :validatable
 
 
  has_many :carts, dependent: :destroy
  has_many :orders

  validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create}
  validates :name,:password, :address, presence: true
  validates :mobile, length: {maximum:10}

end
