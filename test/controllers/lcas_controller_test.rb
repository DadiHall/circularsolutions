require 'test_helper'

class LcasControllerTest < ActionController::TestCase
  setup do
    @lca = lcas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lcas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lca" do
    assert_difference('Lca.count') do
      post :create, lca: { body: @lca.body, image: @lca.image, title: @lca.title }
    end

    assert_redirected_to lca_path(assigns(:lca))
  end

  test "should show lca" do
    get :show, id: @lca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lca
    assert_response :success
  end

  test "should update lca" do
    patch :update, id: @lca, lca: { body: @lca.body, image: @lca.image, title: @lca.title }
    assert_redirected_to lca_path(assigns(:lca))
  end

  test "should destroy lca" do
    assert_difference('Lca.count', -1) do
      delete :destroy, id: @lca
    end

    assert_redirected_to lcas_path
  end
end
