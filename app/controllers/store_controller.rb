class StoreController < ApplicationController
  #gets a list of all products available for bidding based on conditions specified in the view as erb
  def index
    @products = Product.order(:title)
    @bids=Bid.all
  end
end