class PropertiesController < ApplicationController
  before_action :set_property, except: [:new, :create]

  def new
    @property = Property.new
    authorize @property
  end

  def create
    @property = Property.new(property_params)
    authorize @property
    if @property.save
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  def show
    authorize @property
  end

  def destroy
    @property.destroy
    authorize @property
  end

  def edit
    authorize @property
  end

  def update
    @property = Property.find(params[:id])
    authorize @property
    if @property.update(property_params)
      redirect_to property_path(@property)
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    authorize @property
    redirect_to dashboard_path
  end

  private
  
  def property_params
    params.require(:property).permit(:title, :description, :location, :price, :bedrooms, :bathrooms, :main_photo, photos: [])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
