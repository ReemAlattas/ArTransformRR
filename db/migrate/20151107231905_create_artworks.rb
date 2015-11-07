class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.integer :artist_id
      t.text :description
      t.string :media
      t.date :artwork_made
      t.string :dimension
      t.float :suggest_price

      t.timestamps null: false
    end
  end
end
