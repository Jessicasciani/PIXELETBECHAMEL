class AddPhotoToFolders < ActiveRecord::Migration[5.0]
  def change
    add_column :folders, :photo, :string
  end
end
