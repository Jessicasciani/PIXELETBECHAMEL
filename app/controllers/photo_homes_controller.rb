class PhotoHomesController < ApplicationController

  def index
    @disable_nav = true
    @photo_homes = PhotoHome.all.sort_by{ |t| t.id }
    @photo_home = PhotoHome.new
    @articles = Article.all
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
