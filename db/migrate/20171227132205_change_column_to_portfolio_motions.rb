class ChangeColumnToPortfolioMotions < ActiveRecord::Migration[5.0]
  def change
    rename_column :portfolio_motions, :photo, :video
  end
end
