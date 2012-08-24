class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name, :null=>false
      t.integer :library_category_id, :null=>false
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end
