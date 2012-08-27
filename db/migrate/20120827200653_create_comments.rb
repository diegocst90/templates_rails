class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment, :null=>false
      t.integer :user_id
      t.integer :author_id
      t.integer :template_id
      t.integer :template_version_id
      t.integer :which_table, :null=>false# 0=>template_versions, 1=>templates, 2=>authors
      t.float :rate, :default=>0, :null=>false
      t.boolean :deleted, :default=>false
      t.timestamps
      t.timestamps
    end
  end
end
