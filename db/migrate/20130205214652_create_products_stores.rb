class CreateProductsStores < ActiveRecord::Migration
  def change
    create_table :products_stores do |t|
      t.integer :product_id
      t.integer :store_id
      t.decimal :price, :precision => 10, :scale => 2
      t.string :isle

      t.timestamps
    end
  end
end
