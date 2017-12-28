class AddPhotoToPortfolioMotions < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolio_motions, :photo, :string
  end
end
