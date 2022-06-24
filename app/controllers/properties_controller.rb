class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show edit update destroy]
  
  def index 
    @properties = Property.all.order("id DESC")
  end

  def new 
    @property = Property.new
    render :index and return if params[:back]
  end

  def create 
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path, notice: "物件情報を登録しました！"
    else
      render :new
    end
  end

  def show 
    
  end

  def edit

  end

  def update

  end

  def destroy 

  end

  private 

  def property_params
    params.require(:property).permit(%i[name price address age remarks])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
