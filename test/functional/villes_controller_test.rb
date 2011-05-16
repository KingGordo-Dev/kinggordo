require 'test_helper'

class VillesControllerTest < ActionController::TestCase
  setup do
    @ville = villes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:villes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ville" do
    assert_difference('Ville.count') do
      post :create, :ville => @ville.attributes
    end

    assert_redirected_to ville_path(assigns(:ville))
  end

  test "should show ville" do
    get :show, :id => @ville.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ville.to_param
    assert_response :success
  end

  test "should update ville" do
    put :update, :id => @ville.to_param, :ville => @ville.attributes
    assert_redirected_to ville_path(assigns(:ville))
  end

  test "should destroy ville" do
    assert_difference('Ville.count', -1) do
      delete :destroy, :id => @ville.to_param
    end

    assert_redirected_to villes_path
  end
end
