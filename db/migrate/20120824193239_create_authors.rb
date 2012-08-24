class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, :null=>false
      t.string :lastname, :null=>false
      t.string :email, :null=>false
      t.string :webpage
      t.string :location
      t.attachment :avatar
      t.string :biography
      t.integer :views, :default=>0, :null=>false
      t.float :rate, :default=>0, :null=>false
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end