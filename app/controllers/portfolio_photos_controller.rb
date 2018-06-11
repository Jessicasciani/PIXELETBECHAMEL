class PortfolioPhotosController < ApplicationController

  def index
    @folder = Folder.find(params[:folder_id])
    @portfolio_photo = PortfolioPhoto.new
  end

  def new
  end

  def create
    @folder = Folder.find(params[:folder_id])
    @portfolio_photo = PortfolioPhoto.create(photo_params)
    @portfolio_photo.folder = @folder
    @portfolio_photo.save
    redirect_to folder_portfolio_photos_path
  end

  def destroy
    @portfolio_photo = PortfolioPhoto.find(params[:id])
    @portfolio_photo.destroy
    redirect_to folder_portfolio_photos_path
  end


private

  def photo_params
    params.require(:portfolio_photo).permit(:photo, :client)
  end

end
