class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.integer :user_id, null: false
      t.integer :owner_id
      t.string :owner_type

      t.timestamps null: false
    end
  end
end
