class PagesController < ApplicationController

  def home
  end

  def portfolio_photo
    @portfolio_photo = PortfolioPhoto.new
    @portfolio_photos = PortfolioPhoto.all
  end
end
