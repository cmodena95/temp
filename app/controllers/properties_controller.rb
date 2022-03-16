class PropertiesController < ApplicationController
  def new
    # raise
    @property = Property.new
    authorize @property
  end

  def create
    @property = Property.new(properties_params)
    authorize @property
    if @property.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
    @property = Property.find(params[:id])
    authorize @property
  end

  private
  
  def properties_params
    params.require(:property).permit(:title, :description, :location, :price, :bedrooms, :bathrooms, :main_photo, photos: [])
  end
end
