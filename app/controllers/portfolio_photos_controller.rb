class PortfolioPhotosController < ApplicationController

  def new
  end

  def create
    @portfolio_photo = PortfolioPhoto.create(photo_params)
    if @portfolio_photo.save
      redirect_to portfolio_photos_path
    else
      prout
    end
  end

  # def destroy
  # end


private

  def photo_params
    params.require(:portfolio_photo).permit(:photo)
  end

end
