class CreateTemplateImages < ActiveRecord::Migration
  def change
    create_table :template_images do |t|
      t.integer :template_id
      t.integer :template_version_id
      t.attachment :image, :null=>false
      t.boolean :version_mode, :default=>false, :null=>false
      t.text :description
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end
