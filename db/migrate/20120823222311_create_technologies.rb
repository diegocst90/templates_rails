class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name, :null=>false
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end
