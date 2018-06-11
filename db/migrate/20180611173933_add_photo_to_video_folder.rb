class AddPhotoToVideoFolder < ActiveRecord::Migration[5.0]
  def change
    add_column :video_folders, :photo, :string
  end
end
