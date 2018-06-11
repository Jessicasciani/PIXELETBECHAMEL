class AddReferencesToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_reference :portfolio_photos, :folder, index: true
  end
end
