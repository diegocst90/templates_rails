class CreateLibraryVersions < ActiveRecord::Migration
  def change
    create_table :library_versions do |t|
      t.string :name, :null=>false
      t.integer :library_id, :null=>false
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end
