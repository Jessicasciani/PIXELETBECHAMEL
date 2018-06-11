class CreateVideoFolders < ActiveRecord::Migration[5.0]
  def change
    create_table :video_folders do |t|

      t.timestamps
    end
  end
end
