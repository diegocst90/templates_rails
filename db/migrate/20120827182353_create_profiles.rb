class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name, :null=>false
      t.text :description
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end
