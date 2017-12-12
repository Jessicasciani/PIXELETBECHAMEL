class AddPhotoToPortfolioPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolio_photos, :photo, :string
  end
end
