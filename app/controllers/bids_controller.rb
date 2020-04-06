require "product"
class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]

  #index function:
  #gets a list of all the bids placed
  #conditions of bid display are put in erb in the view {eg. only bids placed by curr user will be displayed, etc.}
  # Requests: GET
  def index
    @bids = Bid.all
  end

  #show function:
  #functionality : to view the bid details after it is placed
  def show
    @bid = Bid.find(params[:id]) 
    @product=Product.find(@bid.product_id)
  end

  #creates a new bid for given product on sale
  #again, conditions put in the view as erb
  def new  
    @product =  Product.find(params[:product_id])    
    @bid = Bid.new 
  end 

  def product_name
    @product=product.name
  end  

  def product_id
    @product=product.id
  end

  
  #editing a bid after it is placed
  def edit
  
  end

  #called when submit bid button pushed
  #details stored in model
  def create
    @bid = Bid.new(bid_params)
    respond_to do |format|
      if @bid.save
        format.html { redirect_to @bid, notice: 'Bid was successfully created.' }
        format.json { render :show, status: :created, location: @bid }
      else
        format.html { render :new }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  #called when update bid button pushed
  #details updated in model
  def update
    respond_to do |format|
      if @bid.update(bid_params)
        format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid }
      else
        format.html { render :edit }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  #called when delete bid button pushed
  #details removed from model
  def destroy
    @bid.destroy
    respond_to do |format|
      format.html { redirect_to bids_url, notice: 'Bid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bid_params
      params.require(:bid).permit(:user_email, :bid_value, :product_id, :product_name, :product_deadline)
    end
end
