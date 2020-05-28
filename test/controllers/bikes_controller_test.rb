require 'test_helper'

class BikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bike = bikes(:one)
  end

  test "should get index" do
    get bikes_url, as: :json
    assert_response :success
  end

  test "should create bike" do
    assert_difference('Bike.count') do
      post bikes_url, params: { bike: { date_created: @bike.date_created, date_modified: @bike.date_modified, description: @bike.description, image: @bike.image, name: @bike.name, price: @bike.price, rating: @bike.rating } }, as: :json
    end

    assert_response 201
  end

  test "should show bike" do
    get bike_url(@bike), as: :json
    assert_response :success
  end

  test "should update bike" do
    patch bike_url(@bike), params: { bike: { date_created: @bike.date_created, date_modified: @bike.date_modified, description: @bike.description, image: @bike.image, name: @bike.name, price: @bike.price, rating: @bike.rating } }, as: :json
    assert_response 200
  end

  test "should destroy bike" do
    assert_difference('Bike.count', -1) do
      delete bike_url(@bike), as: :json
    end

    assert_response 204
  end
end
