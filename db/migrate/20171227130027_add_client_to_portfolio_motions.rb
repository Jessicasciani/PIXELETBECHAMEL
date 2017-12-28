class AddClientToPortfolioMotions < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolio_motions, :client, :string
  end
end
