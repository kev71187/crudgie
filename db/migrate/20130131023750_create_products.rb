class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :body
      t.decimal :price, :precision => 10, :scale => 2
      t.integer :category_id

      t.timestamps
    end
  end
end
