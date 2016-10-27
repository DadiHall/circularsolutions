require 'test_helper'

class EmsFootprintsControllerTest < ActionController::TestCase
  setup do
    @ems_footprint = ems_footprints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ems_footprints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ems_footprint" do
    assert_difference('EmsFootprint.count') do
      post :create, ems_footprint: { body: @ems_footprint.body, title: @ems_footprint.title }
    end

    assert_redirected_to ems_footprint_path(assigns(:ems_footprint))
  end

  test "should show ems_footprint" do
    get :show, id: @ems_footprint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ems_footprint
    assert_response :success
  end

  test "should update ems_footprint" do
    patch :update, id: @ems_footprint, ems_footprint: { body: @ems_footprint.body, title: @ems_footprint.title }
    assert_redirected_to ems_footprint_path(assigns(:ems_footprint))
  end

  test "should destroy ems_footprint" do
    assert_difference('EmsFootprint.count', -1) do
      delete :destroy, id: @ems_footprint
    end

    assert_redirected_to ems_footprints_path
  end
end
