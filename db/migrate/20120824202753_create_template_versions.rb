class CreateTemplateVersions < ActiveRecord::Migration
  def change
    create_table :template_versions do |t|
      t.string :name, :null=>false
      t.string :version, :null=>false
      t.integer :template_id, :null=>false
      t.integer :technology_version_id, :null=>false
      t.text :change_log
      t.boolean :path_or_url, :null=>false, :default=>false #false=>path, true=>url
      t.string :path
      t.string :url
      t.integer :views, :default=>0, :null=>false
      t.float :rate, :default=>0, :null=>false
      t.boolean :active, :default=>false
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end
