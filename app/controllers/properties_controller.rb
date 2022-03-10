class PropertiesController < ApplicationController
  private
  
  def properties_params
    params.require(:property).permit(:title, :description, :location, :price, :bedrooms, :bathrooms, photos: [])
  end
end
