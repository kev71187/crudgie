class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :user_id
      t.integer :rating
      t.integer :product_id
      t.text :comment
      t.integer :admin

      t.timestamps
    end
  end
end
