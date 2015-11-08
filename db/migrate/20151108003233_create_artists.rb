class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :email
      t.string :tagline
      t.text :artwork_summary
      t.string :professional_organization
      t.text :exhibits_history
      t.text :awards_history

      t.timestamps null: false
    end
  end
end
