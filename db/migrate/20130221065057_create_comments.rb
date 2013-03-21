class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :body
      t.integer :admin
      t.integer :blog_id

      t.timestamps
    end
  end
end
