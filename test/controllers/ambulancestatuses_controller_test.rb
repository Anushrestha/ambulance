require 'test_helper'

class AmbulancestatusesControllerTest < ActionController::TestCase
  setup do
    @ambulancestatus = ambulancestatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ambulancestatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ambulancestatus" do
    assert_difference('Ambulancestatus.count') do
      post :create, ambulancestatus: { status: @ambulancestatus.status }
    end

    assert_redirected_to ambulancestatus_path(assigns(:ambulancestatus))
  end

  test "should show ambulancestatus" do
    get :show, id: @ambulancestatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ambulancestatus
    assert_response :success
  end

  test "should update ambulancestatus" do
    patch :update, id: @ambulancestatus, ambulancestatus: { status: @ambulancestatus.status }
    assert_redirected_to ambulancestatus_path(assigns(:ambulancestatus))
  end

  test "should destroy ambulancestatus" do
    assert_difference('Ambulancestatus.count', -1) do
      delete :destroy, id: @ambulancestatus
    end

    assert_redirected_to ambulancestatuses_path
  end
end
