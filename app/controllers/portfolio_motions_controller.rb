class PortfolioMotionsController < ApplicationController

  def index
    @video_folder = VideoFolder.find(params[:video_folder_id])
    @portfolio_motion = PortfolioMotion.new
  end

  def new
  end

  def create
    @video_folder = VideoFolder.find(params[:video_folder_id])
    @portfolio_motion = PortfolioMotion.new(motion_params)
    @portfolio_motion.video_folder = @video_folder
    @portfolio_motion.save
    redirect_to video_folder_portfolio_motions_path
  end

  def destroy
    @portfolio_motion = PortfolioMotion.find(params[:id])
    @portfolio_motion.destroy
    redirect_to video_folder_portfolio_motions_path
  end


private

  def motion_params
    params.require(:portfolio_motion).permit(:video, :client)
  end

end
