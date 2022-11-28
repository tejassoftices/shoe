class Category < ApplicationRecord
   has_many :shoes

   validates :name, :active, presence: true

end
