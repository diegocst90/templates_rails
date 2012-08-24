class CreateLibraryCategories < ActiveRecord::Migration
  def change
    create_table :library_categories do |t|
      t.string :name, :null=>false
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end
