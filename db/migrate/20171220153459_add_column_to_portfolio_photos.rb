class AddColumnToPortfolioPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolio_photos, :client, :string
  end
end
