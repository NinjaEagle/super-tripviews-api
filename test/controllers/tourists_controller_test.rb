require 'test_helper'

class TouristsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tourist = tourists(:one)
  end

  test "should get index" do
    get tourists_url, as: :json
    assert_response :success
  end

  test "should create tourist" do
    assert_difference('Tourist.count') do
      post tourists_url, params: { tourist: { age: @tourist.age, name: @tourist.name, review: @tourist.review } }, as: :json
    end

    assert_response 201
  end

  test "should show tourist" do
    get tourist_url(@tourist), as: :json
    assert_response :success
  end

  test "should update tourist" do
    patch tourist_url(@tourist), params: { tourist: { age: @tourist.age, name: @tourist.name, review: @tourist.review } }, as: :json
    assert_response 200
  end

  test "should destroy tourist" do
    assert_difference('Tourist.count', -1) do
      delete tourist_url(@tourist), as: :json
    end

    assert_response 204
  end
end
