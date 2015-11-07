class Artwork < ActiveRecord::Base
	validates :title,  presence: true, length: { maximum: 50 }
	validates :artist_id, presence: true
	validates :description,  presence: true, length: { maximum: 250 }
	validates :media,  presence: true, length: { maximum: 50 }
	validates :artwork_made,  presence: true
	validates :dimention,  presence: true
end
