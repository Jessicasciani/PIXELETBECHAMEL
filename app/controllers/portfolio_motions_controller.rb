class PortfolioMotionsController < ApplicationController

  def index
    @portfolio_motions = PortfolioMotion.all
    @portfolio_motion = PortfolioMotion.new
  end

  def new
  end

  def create
    @portfolio_motion = PortfolioMotion.create(motion_params)
    @portfolio_motion.save
    redirect_to portfolio_motions_path
  end

  def destroy
    @portfolio_motion = PortfolioMotion.find(params[:id])
    @portfolio_motion.destroy
    redirect_to portfolio_motions_path
  end


private

  def motion_params
    params.require(:portfolio_motion).permit(:video, :client)
  end

end
