class RemoveFolderFromPortfolioMotion < ActiveRecord::Migration[5.0]
  def change
    remove_column :portfolio_motions, :folder_id
    add_reference :portfolio_motions, :video_folder, index: true
  end
end
