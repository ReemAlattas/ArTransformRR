class CreateSoldArtworks < ActiveRecord::Migration
  def change
    create_table :sold_artworks do |t|
      t.integer :user_id
      t.integer :artwork_id
      t.float :pay_amount
      t.string :pay_method
      t.date :pay_date
      t.float :shipping_cost
      t.string :shipping_method
      t.string :shipping_street
      t.string :shipping_city
      t.string :shipping_state
      t.integer :shipping_zipcode
      t.string :shipping_country

      t.timestamps null: false
    end
  end
end
