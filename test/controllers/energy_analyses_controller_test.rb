require 'test_helper'

class EnergyAnalysesControllerTest < ActionController::TestCase
  setup do
    @energy_analysis = energy_analyses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:energy_analyses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create energy_analysis" do
    assert_difference('EnergyAnalysis.count') do
      post :create, energy_analysis: { body: @energy_analysis.body, image: @energy_analysis.image, title: @energy_analysis.title }
    end

    assert_redirected_to energy_analysis_path(assigns(:energy_analysis))
  end

  test "should show energy_analysis" do
    get :show, id: @energy_analysis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @energy_analysis
    assert_response :success
  end

  test "should update energy_analysis" do
    patch :update, id: @energy_analysis, energy_analysis: { body: @energy_analysis.body, image: @energy_analysis.image, title: @energy_analysis.title }
    assert_redirected_to energy_analysis_path(assigns(:energy_analysis))
  end

  test "should destroy energy_analysis" do
    assert_difference('EnergyAnalysis.count', -1) do
      delete :destroy, id: @energy_analysis
    end

    assert_redirected_to energy_analyses_path
  end
end
