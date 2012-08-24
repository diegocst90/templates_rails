class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :author_id
      t.integer :facebook_id, :references=>nil
      t.attachment :avatar
      t.boolean :deleted, :default=>false
      t.timestamps
    end
  end
end
