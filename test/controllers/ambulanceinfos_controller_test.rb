require 'test_helper'

class AmbulanceinfosControllerTest < ActionController::TestCase
  setup do
    @ambulanceinfo = ambulanceinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ambulanceinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ambulanceinfo" do
    assert_difference('Ambulanceinfo.count') do
      post :create, ambulanceinfo: { contact1: @ambulanceinfo.contact1, contact2: @ambulanceinfo.contact2, name: @ambulanceinfo.name, organization_name: @ambulanceinfo.organization_name }
    end

    assert_redirected_to ambulanceinfo_path(assigns(:ambulanceinfo))
  end

  test "should show ambulanceinfo" do
    get :show, id: @ambulanceinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ambulanceinfo
    assert_response :success
  end

  test "should update ambulanceinfo" do
    patch :update, id: @ambulanceinfo, ambulanceinfo: { contact1: @ambulanceinfo.contact1, contact2: @ambulanceinfo.contact2, name: @ambulanceinfo.name, organization_name: @ambulanceinfo.organization_name }
    assert_redirected_to ambulanceinfo_path(assigns(:ambulanceinfo))
  end

  test "should destroy ambulanceinfo" do
    assert_difference('Ambulanceinfo.count', -1) do
      delete :destroy, id: @ambulanceinfo
    end

    assert_redirected_to ambulanceinfos_path
  end
end
