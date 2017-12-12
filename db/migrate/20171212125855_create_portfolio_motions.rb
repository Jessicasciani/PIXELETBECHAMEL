class CreatePortfolioMotions < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolio_motions do |t|

      t.timestamps
    end
  end
end
