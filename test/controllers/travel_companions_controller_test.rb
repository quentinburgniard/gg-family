require 'test_helper'

class TravelCompanionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_companion = travel_companions(:one)
  end

  test "should get index" do
    get travel_companions_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_companion_url
    assert_response :success
  end

  test "should create travel_companion" do
    assert_difference('TravelCompanion.count') do
      post travel_companions_url, params: { travel_companion: { ambition: @travel_companion.ambition, description: @travel_companion.description, expertise: @travel_companion.expertise, name: @travel_companion.name, patience: @travel_companion.patience, perfectionism: @travel_companion.perfectionism, talkativeness: @travel_companion.talkativeness } }
    end

    assert_redirected_to travel_companion_url(TravelCompanion.last)
  end

  test "should show travel_companion" do
    get travel_companion_url(@travel_companion)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_companion_url(@travel_companion)
    assert_response :success
  end

  test "should update travel_companion" do
    patch travel_companion_url(@travel_companion), params: { travel_companion: { ambition: @travel_companion.ambition, description: @travel_companion.description, expertise: @travel_companion.expertise, name: @travel_companion.name, patience: @travel_companion.patience, perfectionism: @travel_companion.perfectionism, talkativeness: @travel_companion.talkativeness } }
    assert_redirected_to travel_companion_url(@travel_companion)
  end

  test "should destroy travel_companion" do
    assert_difference('TravelCompanion.count', -1) do
      delete travel_companion_url(@travel_companion)
    end

    assert_redirected_to travel_companions_url
  end
end
