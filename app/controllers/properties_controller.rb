class PropertiesController < ApplicationController
  def new
    # raise
    @property = Property.new
    authorize @property
  end

  def create
    @property = Property.new(properties_params)
    authorize @property
    if @property.save?
      redirect to dashboard_path
    else
      render :new
    end
  end

  private
  
  def properties_params
    params.require(:property).permit(:title, :description, :location, :price, :bedrooms, :bathrooms, photos: [])
  end
end
