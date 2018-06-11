class FoldersController < ApplicationController

  def index
    @folders = Folder.all
    @folder = Folder.new
  end

  def new
  end

  def create
    @folder = Folder.new(folder_params)
    @folder.save
    redirect_to folders_path
  end

  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    redirect_to folders_path
  end


private

  def folder_params
    params.require(:folder).permit(:client)
  end

end
