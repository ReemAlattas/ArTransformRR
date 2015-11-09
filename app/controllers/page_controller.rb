class PageController < ApplicationController
  def auction
    @bid = Bid.new(params[:trip])
  end

  def show
   @bid = Bid.find(params[:id])
  end

   def create
   @bid = Bid.new(bid_params)

   if @bid.save
     render "items/show" 
   else
     render 'items/show'
   end

def bid
    
end

 end 
 private
   def bid_params
     params.require(:bid).permit(:title, :time, :bid)
   end
end

