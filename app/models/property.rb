class Property < ApplicationRecord
  include ActionView::Helpers::NumberHelper
  has_one_attached :main_photo
  has_many_attached :photos
  validates :title, :description, :location, :number_of_bedrooms, :number_of_bathrooms, :price, presence: true

  def humanized_price
    if price.to_i == price
      number_with_delimiter(price.to_i, :delimiter => ',')
    else
      number_with_delimiter(price, :delimiter => ',')
    end
  end
end
