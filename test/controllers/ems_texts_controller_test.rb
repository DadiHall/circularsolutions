require 'test_helper'

class EmsTextsControllerTest < ActionController::TestCase
  setup do
    @ems_text = ems_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ems_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ems_text" do
    assert_difference('EmsText.count') do
      post :create, ems_text: { body: @ems_text.body }
    end

    assert_redirected_to ems_text_path(assigns(:ems_text))
  end

  test "should show ems_text" do
    get :show, id: @ems_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ems_text
    assert_response :success
  end

  test "should update ems_text" do
    patch :update, id: @ems_text, ems_text: { body: @ems_text.body }
    assert_redirected_to ems_text_path(assigns(:ems_text))
  end

  test "should destroy ems_text" do
    assert_difference('EmsText.count', -1) do
      delete :destroy, id: @ems_text
    end

    assert_redirected_to ems_texts_path
  end
end
