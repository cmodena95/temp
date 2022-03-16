class Property < ApplicationRecord
  has_one_attached :main_photo
  has_many_attached :photos

  validates :title, :description, :location, :bedrooms, :bathrooms, :price, presence: true
end
