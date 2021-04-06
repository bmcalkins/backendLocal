class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :product_type
      t.string :product_name
      t.string :img_url
      t.decimal :quantity
      t.decimal :price
      t.string :location
      t.references :User, null: false, foreign_key: true
      t.references :Seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
