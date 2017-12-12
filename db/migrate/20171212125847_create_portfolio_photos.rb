class CreatePortfolioPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolio_photos do |t|

      t.timestamps
    end
  end
end
