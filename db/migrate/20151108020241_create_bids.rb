class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :artwork_id
      t.integer :user_id
      t.float :bid_amount
      t.date :bid_date

      t.timestamps null: false
    end
  end
end
