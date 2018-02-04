class AddPhotoToPhotoHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :photo_homes, :photo, :string
  end
end
