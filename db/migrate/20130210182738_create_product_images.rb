class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.integer :product_id
      t.integer :order

      t.timestamps
      t.attachment :photo
    end
  end
end
