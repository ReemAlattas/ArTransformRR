class Bid < ActiveRecord::Base
	belongs :artworks
	belongs :users
	has_many :artists, through: :artworks

	validates :bid_amount,  presence: true
	validates :bid_date, presence: true
end
