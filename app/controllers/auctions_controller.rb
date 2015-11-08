class AuctionsController < ApplicationController
  before_action :load_auction, only: :show

  def show; end

  private

  def load_auction
    @auction = Auction.find(params[:id])
  end
end