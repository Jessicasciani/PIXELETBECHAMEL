class AddPhotosToFolders < ActiveRecord::Migration[5.0]
  def change
    add_column :folders, :client, :string
  end
end
