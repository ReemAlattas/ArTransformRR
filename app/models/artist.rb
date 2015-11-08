class Artist < ActiveRecord::Base
	has_many :artworks, dependent: :destroy
	has_many :users, through: :artworks
	has_many :bids, through: :artworks
	has_many :sold_artworks

	validates :name,  presence: true, length: { maximum: 50 }
	validates :title, presence: true
	validates :artwork_summary,  presence: true, length: { maximum: 250 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	
end
