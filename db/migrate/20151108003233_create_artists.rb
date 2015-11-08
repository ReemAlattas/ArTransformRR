class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :tagline
      t.text :artwork_summary
      t.string :professional_organization
      t.text :exhibit_history
      t.text :award_history

      t.timestamps null: false
    end
  end
end
