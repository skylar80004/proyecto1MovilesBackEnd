require 'test_helper'

class PhotoRestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_restaurant = photo_restaurants(:one)
  end

  test "should get index" do
    get photo_restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_restaurant_url
    assert_response :success
  end

  test "should create photo_restaurant" do
    assert_difference('PhotoRestaurant.count') do
      post photo_restaurants_url, params: { photo_restaurant: { image_url: @photo_restaurant.image_url, restaurant_id: @photo_restaurant.restaurant_id } }
    end

    assert_redirected_to photo_restaurant_url(PhotoRestaurant.last)
  end

  test "should show photo_restaurant" do
    get photo_restaurant_url(@photo_restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_restaurant_url(@photo_restaurant)
    assert_response :success
  end

  test "should update photo_restaurant" do
    patch photo_restaurant_url(@photo_restaurant), params: { photo_restaurant: { image_url: @photo_restaurant.image_url, restaurant_id: @photo_restaurant.restaurant_id } }
    assert_redirected_to photo_restaurant_url(@photo_restaurant)
  end

  test "should destroy photo_restaurant" do
    assert_difference('PhotoRestaurant.count', -1) do
      delete photo_restaurant_url(@photo_restaurant)
    end

    assert_redirected_to photo_restaurants_url
  end
end
