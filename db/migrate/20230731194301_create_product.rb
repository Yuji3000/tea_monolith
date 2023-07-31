class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image
      t.float :price
      t.string :stripe_product_id
      t.string :stripe_default_price

      t.timestamps
    end
  end
end
