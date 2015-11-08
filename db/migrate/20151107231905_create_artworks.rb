class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.string :media
      t.date :date_made
      t.string :dimension
      t.float :suggest_price

      t.timestamps null: false
    end
  end
end
