class CreateTechnologyVersions < ActiveRecord::Migration
  def change
    create_table :technology_versions do |t|
      t.string :name, :null=>false
      t.integer :technology_id, :null=>false
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end
