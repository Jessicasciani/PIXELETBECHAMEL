class AddClientToVideoFolder < ActiveRecord::Migration[5.0]
  def change
    add_column :video_folders, :client, :string
  end
end
