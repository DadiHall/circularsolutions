require 'test_helper'

class EmsGreenAcountingsControllerTest < ActionController::TestCase
  setup do
    @ems_green_acounting = ems_green_acountings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ems_green_acountings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ems_green_acounting" do
    assert_difference('EmsGreenAcounting.count') do
      post :create, ems_green_acounting: {  }
    end

    assert_redirected_to ems_green_acounting_path(assigns(:ems_green_acounting))
  end

  test "should show ems_green_acounting" do
    get :show, id: @ems_green_acounting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ems_green_acounting
    assert_response :success
  end

  test "should update ems_green_acounting" do
    patch :update, id: @ems_green_acounting, ems_green_acounting: {  }
    assert_redirected_to ems_green_acounting_path(assigns(:ems_green_acounting))
  end

  test "should destroy ems_green_acounting" do
    assert_difference('EmsGreenAcounting.count', -1) do
      delete :destroy, id: @ems_green_acounting
    end

    assert_redirected_to ems_green_acountings_path
  end
end
