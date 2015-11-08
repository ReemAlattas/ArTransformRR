class Artist < ActiveRecord::Base
	has_many :artworks, dependent: :destroy
	has_many :users, through: :artworks
	validates :name,  presence: true, length: { maximum: 50 }
	validates :title, presence: true
	validates :artwork_summary,  presence: true, length: { maximum: 250 }
	
end
