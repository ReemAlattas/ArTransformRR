class BidsController < ApplicationController
	def index
    @bids = Bid.all
  end
 
  def show
    @bid = Bid.find(params[:id])
  end
 
  def new
    @bid = Bid.new
  end
 
  def edit
    @bid= Bid.find(params[:id])
  end
 
  def create
    @bid = Bid.new(bid_params)
 
    if @bid.save
      redirect_to @bids
    else
      render 'new'
    end
  end 
 
  private
    def bid_params
      params.require(:bid).permit(:title, :time, :bid)
    end
end
