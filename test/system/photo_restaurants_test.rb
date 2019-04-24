require "application_system_test_case"

class PhotoRestaurantsTest < ApplicationSystemTestCase
  setup do
    @photo_restaurant = photo_restaurants(:one)
  end

  test "visiting the index" do
    visit photo_restaurants_url
    assert_selector "h1", text: "Photo Restaurants"
  end

  test "creating a Photo restaurant" do
    visit photo_restaurants_url
    click_on "New Photo Restaurant"

    fill_in "Image url", with: @photo_restaurant.image_url
    fill_in "Restaurant", with: @photo_restaurant.restaurant_id
    click_on "Create Photo restaurant"

    assert_text "Photo restaurant was successfully created"
    click_on "Back"
  end

  test "updating a Photo restaurant" do
    visit photo_restaurants_url
    click_on "Edit", match: :first

    fill_in "Image url", with: @photo_restaurant.image_url
    fill_in "Restaurant", with: @photo_restaurant.restaurant_id
    click_on "Update Photo restaurant"

    assert_text "Photo restaurant was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo restaurant" do
    visit photo_restaurants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo restaurant was successfully destroyed"
  end
end
