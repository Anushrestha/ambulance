require 'test_helper'

class AmbulancelocationsControllerTest < ActionController::TestCase
  setup do
    @ambulancelocation = ambulancelocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ambulancelocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ambulancelocation" do
    assert_difference('Ambulancelocation.count') do
      post :create, ambulancelocation: { address: @ambulancelocation.address, latitude: @ambulancelocation.latitude, longitude: @ambulancelocation.longitude }
    end

    assert_redirected_to ambulancelocation_path(assigns(:ambulancelocation))
  end

  test "should show ambulancelocation" do
    get :show, id: @ambulancelocation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ambulancelocation
    assert_response :success
  end

  test "should update ambulancelocation" do
    patch :update, id: @ambulancelocation, ambulancelocation: { address: @ambulancelocation.address, latitude: @ambulancelocation.latitude, longitude: @ambulancelocation.longitude }
    assert_redirected_to ambulancelocation_path(assigns(:ambulancelocation))
  end

  test "should destroy ambulancelocation" do
    assert_difference('Ambulancelocation.count', -1) do
      delete :destroy, id: @ambulancelocation
    end

    assert_redirected_to ambulancelocations_path
  end
end
