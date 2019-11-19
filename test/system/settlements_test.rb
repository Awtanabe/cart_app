require "application_system_test_case"

class SettlementsTest < ApplicationSystemTestCase
  setup do
    @settlement = settlements(:one)
  end

  test "visiting the index" do
    visit settlements_url
    assert_selector "h1", text: "Settlements"
  end

  test "creating a Settlement" do
    visit settlements_url
    click_on "New Settlement"

    fill_in "Card brand", with: @settlement.card_brand
    fill_in "Card exp month", with: @settlement.card_exp_month
    fill_in "Card exp year", with: @settlement.card_exp_year
    fill_in "Card last4", with: @settlement.card_last4
    fill_in "Order", with: @settlement.order_id
    fill_in "Stripe", with: @settlement.stripe_id
    fill_in "User", with: @settlement.user_id
    click_on "Create Settlement"

    assert_text "Settlement was successfully created"
    click_on "Back"
  end

  test "updating a Settlement" do
    visit settlements_url
    click_on "Edit", match: :first

    fill_in "Card brand", with: @settlement.card_brand
    fill_in "Card exp month", with: @settlement.card_exp_month
    fill_in "Card exp year", with: @settlement.card_exp_year
    fill_in "Card last4", with: @settlement.card_last4
    fill_in "Order", with: @settlement.order_id
    fill_in "Stripe", with: @settlement.stripe_id
    fill_in "User", with: @settlement.user_id
    click_on "Update Settlement"

    assert_text "Settlement was successfully updated"
    click_on "Back"
  end

  test "destroying a Settlement" do
    visit settlements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Settlement was successfully destroyed"
  end
end
