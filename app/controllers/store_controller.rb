class StoreController < ApplicationController
  def index
    
    @products = Product.order(:title)
    @bids=Bid.all
  end

  
end