class Auction < ActiveRecord::Base
  belongs_to :auctionable, polymorphic: true

  before_create :set_current_price

  private

  def set_current_price
    self.current_price = self.starting_price
  end
end