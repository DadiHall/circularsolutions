require 'test_helper'

class GreenAccountingsControllerTest < ActionController::TestCase
  setup do
    @green_accounting = green_accountings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:green_accountings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create green_accounting" do
    assert_difference('GreenAccounting.count') do
      post :create, green_accounting: { body: @green_accounting.body, image: @green_accounting.image, title: @green_accounting.title }
    end

    assert_redirected_to green_accounting_path(assigns(:green_accounting))
  end

  test "should show green_accounting" do
    get :show, id: @green_accounting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @green_accounting
    assert_response :success
  end

  test "should update green_accounting" do
    patch :update, id: @green_accounting, green_accounting: { body: @green_accounting.body, image: @green_accounting.image, title: @green_accounting.title }
    assert_redirected_to green_accounting_path(assigns(:green_accounting))
  end

  test "should destroy green_accounting" do
    assert_difference('GreenAccounting.count', -1) do
      delete :destroy, id: @green_accounting
    end

    assert_redirected_to green_accountings_path
  end
end
