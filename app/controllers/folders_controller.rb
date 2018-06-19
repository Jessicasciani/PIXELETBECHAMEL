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


  def edit
    @folder = Folder.find(params[:id])
  end

  def update
    @folder = Folder.find(params[:id])
    @folder.update(folder_params)
    redirect_to folders_path
  end


private

  def folder_params
    params.require(:folder).permit(:client, :photo)
  end

end
