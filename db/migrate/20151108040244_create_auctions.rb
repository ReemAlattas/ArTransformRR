class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string  :title,          null: false
      t.text    :description,    null: false
      t.decimal :starting_price, null: false, precision: 7, scale: 2
      t.decimal :current_price,  null: false, precision: 7, scale: 2
      t.integer :auctionable_id
      t.string  :auctionable_type
    end

    add_index :auctions, [:auctionable_id, :auctionable_type]
  end
end
