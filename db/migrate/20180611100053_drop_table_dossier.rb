class DropTableDossier < ActiveRecord::Migration[5.0]
  def change
    drop_table :dossiers
  end
end
