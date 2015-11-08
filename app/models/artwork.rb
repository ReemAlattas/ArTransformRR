class Artwork < ActiveRecord::Base
	validates :title,  presence: true, length: { maximum: 50 }
	#validates :artist, presence: true
	#validates :description,  presence: true, length: { maximum: 250 }
	#validates :media,  presence: true, length: { maximum: 50 }
	#validates :date_made,  presence: true
	#validates :dimention,  presence: true
end
