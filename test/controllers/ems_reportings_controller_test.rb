require 'test_helper'

class EmsReportingsControllerTest < ActionController::TestCase
  setup do
    @ems_reporting = ems_reportings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ems_reportings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ems_reporting" do
    assert_difference('EmsReporting.count') do
      post :create, ems_reporting: { body: @ems_reporting.body, title: @ems_reporting.title }
    end

    assert_redirected_to ems_reporting_path(assigns(:ems_reporting))
  end

  test "should show ems_reporting" do
    get :show, id: @ems_reporting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ems_reporting
    assert_response :success
  end

  test "should update ems_reporting" do
    patch :update, id: @ems_reporting, ems_reporting: { body: @ems_reporting.body, title: @ems_reporting.title }
    assert_redirected_to ems_reporting_path(assigns(:ems_reporting))
  end

  test "should destroy ems_reporting" do
    assert_difference('EmsReporting.count', -1) do
      delete :destroy, id: @ems_reporting
    end

    assert_redirected_to ems_reportings_path
  end
end
