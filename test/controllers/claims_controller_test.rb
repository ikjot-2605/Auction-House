require 'test_helper'

class ClaimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @claim = claims(:one)
  end

  test "should get index" do
    get claims_url
    assert_response :success
  end

  test "should get new" do
    get new_claim_url
    assert_response :success
  end

  test "should create claim" do
    assert_difference('Claim.count') do
      post claims_url, params: { claim: { c_bid_forproduct: @claim.c_bid_forproduct, c_product_id: @claim.c_product_id, c_product_name: @claim.c_product_name, integer: @claim.integer } }
    end

    assert_redirected_to claim_url(Claim.last)
  end

  test "should show claim" do
    get claim_url(@claim)
    assert_response :success
  end

  test "should get edit" do
    get edit_claim_url(@claim)
    assert_response :success
  end

  test "should update claim" do
    patch claim_url(@claim), params: { claim: { c_bid_forproduct: @claim.c_bid_forproduct, c_product_id: @claim.c_product_id, c_product_name: @claim.c_product_name, integer: @claim.integer } }
    assert_redirected_to claim_url(@claim)
  end

  test "should destroy claim" do
    assert_difference('Claim.count', -1) do
      delete claim_url(@claim)
    end

    assert_redirected_to claims_url
  end
end
