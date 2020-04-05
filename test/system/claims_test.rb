require "application_system_test_case"

class ClaimsTest < ApplicationSystemTestCase
  setup do
    @claim = claims(:one)
  end

  test "visiting the index" do
    visit claims_url
    assert_selector "h1", text: "Claims"
  end

  test "creating a Claim" do
    visit claims_url
    click_on "New Claim"

    fill_in "C bid forproduct", with: @claim.c_bid_forproduct
    fill_in "C product", with: @claim.c_product_id
    fill_in "C product name", with: @claim.c_product_name
    fill_in "Integer", with: @claim.integer
    click_on "Create Claim"

    assert_text "Claim was successfully created"
    click_on "Back"
  end

  test "updating a Claim" do
    visit claims_url
    click_on "Edit", match: :first

    fill_in "C bid forproduct", with: @claim.c_bid_forproduct
    fill_in "C product", with: @claim.c_product_id
    fill_in "C product name", with: @claim.c_product_name
    fill_in "Integer", with: @claim.integer
    click_on "Update Claim"

    assert_text "Claim was successfully updated"
    click_on "Back"
  end

  test "destroying a Claim" do
    visit claims_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Claim was successfully destroyed"
  end
end
