class Artwork < ActiveRecord::Base
	has_and_belongs_to_many :artists
	has_many :bids, through: :users
	has_many :sold_artworks

	validates :title,  presence: true, length: { maximum: 50 }
	validates :artist_id, presence: true
	validates :description,  presence: true, length: { maximum: 250 }
	validates :media,  presence: true, length: { maximum: 50 }
	validates :artwork_made,  presence: true
	validates :dimention,  presence: true
end
