class RemoveFolderFromPortfolioMotion < ActiveRecord::Migration[5.0]
  def change
    add_reference :portfolio_motions, :video_folder, index: true
  end
end
