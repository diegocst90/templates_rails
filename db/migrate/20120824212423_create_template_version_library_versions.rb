class CreateTemplateVersionLibraryVersions < ActiveRecord::Migration
  def change
    create_table :template_version_library_versions do |t|
      t.integer :template_version_id, :null=>false
      t.integer :library_version_id, :null=>false
      t.timestamps
    end
  end
end
