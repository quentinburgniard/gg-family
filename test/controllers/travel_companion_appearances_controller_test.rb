require 'test_helper'

class TravelCompanionAppearancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_companion_appearance = travel_companion_appearances(:one)
  end

  test "should get index" do
    get travel_companion_appearances_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_companion_appearance_url
    assert_response :success
  end

  test "should create travel_companion_appearance" do
    assert_difference('TravelCompanionAppearance.count') do
      post travel_companion_appearances_url, params: { travel_companion_appearance: { profile_picture: @travel_companion_appearance.profile_picture, welcome_picture: @travel_companion_appearance.welcome_picture } }
    end

    assert_redirected_to travel_companion_appearance_url(TravelCompanionAppearance.last)
  end

  test "should show travel_companion_appearance" do
    get travel_companion_appearance_url(@travel_companion_appearance)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_companion_appearance_url(@travel_companion_appearance)
    assert_response :success
  end

  test "should update travel_companion_appearance" do
    patch travel_companion_appearance_url(@travel_companion_appearance), params: { travel_companion_appearance: { profile_picture: @travel_companion_appearance.profile_picture, welcome_picture: @travel_companion_appearance.welcome_picture } }
    assert_redirected_to travel_companion_appearance_url(@travel_companion_appearance)
  end

  test "should destroy travel_companion_appearance" do
    assert_difference('TravelCompanionAppearance.count', -1) do
      delete travel_companion_appearance_url(@travel_companion_appearance)
    end

    assert_redirected_to travel_companion_appearances_url
  end
end
