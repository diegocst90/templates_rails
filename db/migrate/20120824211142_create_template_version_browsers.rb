class CreateTemplateVersionBrowsers < ActiveRecord::Migration
  def change
    create_table :template_version_browsers do |t|
      t.integer :template_version_id, :null=>false
      t.integer :browser_id, :null=>false
      t.timestamps
    end
  end
end
