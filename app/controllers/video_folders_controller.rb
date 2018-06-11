class VideoFoldersController < ApplicationController

  def index
    @video_folders = VideoFolder.all
    @video_folder = VideoFolder.new
  end

  def new
  end

  def create
    @video_folder = VideoFolder.new(video_folder_params)
    @video_folder.save
    redirect_to video_folders_path
  end

  def destroy
    @video_folder = VideoFolder.find(params[:id])
    @video_folder.destroy
    redirect_to video_folders_path
  end


private

  def video_folder_params
    params.require(:video_folder).permit(:client, :photo)
  end

end
