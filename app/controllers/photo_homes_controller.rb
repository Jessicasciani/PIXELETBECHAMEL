class PhotoHomesController < ApplicationController

  def index
    @photo_homes = PhotoHome.all
    @photo_home = PhotoHome.new
  end

  def new
  end

  def create
    @photo_home = PhotoHome.create(home_params)
    @photo_home.save
    redirect_to root_path
  end

  def edit
    @photo_home = PhotoHome.find(params[:id])
  end

  def update
    @photo_home = PhotoHome.find(params[:id])
    @photo_home.update(home_params)
    redirect_to root_path
  end

  def destroy
    @photo_home = PhotoHome.find(params[:id])
    @photo_home.destroy
    redirect_to root_path
  end


private

  def home_params
    params.require(:photo_home).permit(:photo)
  end

end
