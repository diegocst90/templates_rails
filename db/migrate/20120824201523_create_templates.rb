class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name, :null=>false
      t.text :description
      t.integer :author_id, :null=>false
      t.integer :template_category_id, :null=>false
      t.attachment :avatar, :null=>false
      t.integer :views, :default=>0, :null=>false
      t.float :rate, :default=>0, :null=>false
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end
