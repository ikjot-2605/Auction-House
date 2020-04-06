class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :edit, :update, :destroy]

  #index function:
  #gets a list of all the products claimed
  #conditions of claim display are put in erb in the view {eg. only claims by curr user will be displayed, etc.}
  # Requests: GET
  def index
    @claims = Claim.all
  end

  #show function:
  #functionality : to view the claim details after it is claimed
  def show
  end

  #creates new claim as and when the highest bidder decides to claim item 
  def new
    @claim = Claim.new
    @user=current_user
    @bid =  Bid.find(params[:bid_id])
  end

  # GET /claims/1/edit
  def edit
  end

  #called when submit claim button pushed
  #details stored in model
  #once claimed, product's claimed value becomes true and is not displayed to new buyers anymore
  #upon claiming, user_id is stored in model
  def create
    @claim = Claim.new(claim_params)
    @user=User.find(@claim.user_id)
    @product=Product.find(@claim.c_product_id)
    @product.cuser_id=@claim.user_id
    @product.save
    @product.claimed=true
    @product.save
    respond_to do |format|
      if @claim.save
        format.html { redirect_to @claim, notice: 'Claim was successfully created.' }
        format.json { render :show, status: :created, location: @claim }
      else
        format.html { render :new }
        format.json { render json: @claim.errors, status: :unprocessable_entity }
      end
    end
  end

  #called when update claim button pushed
  #details stored in model
  def update
    respond_to do |format|
      if @claim.update(claim_params)
        format.html { redirect_to @claim, notice: 'Claim was successfully updated.' }
        format.json { render :show, status: :ok, location: @claim }
      else
        format.html { render :edit }
        format.json { render json: @claim.errors, status: :unprocessable_entity }
      end
    end
  end

  #pretty much useless, but available if needed
  #not used, because it doesn't make sense to delete a claim after the seller is assured that transaction is done
  def destroy
    @claim.destroy
    respond_to do |format|
      format.html { redirect_to claims_url, notice: 'Claim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_claim
      @claim = Claim.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def claim_params
      params.require(:claim).permit(:c_product_id, :c_product_name, :c_bid_forproduct, :integer, :user_id)
    end
end
