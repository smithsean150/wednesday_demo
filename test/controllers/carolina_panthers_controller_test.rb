require 'test_helper'

class CarolinaPanthersControllerTest < ActionController::TestCase
  setup do
    @carolina_panther = carolina_panthers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carolina_panthers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carolina_panther" do
    assert_difference('CarolinaPanther.count') do
      post :create, carolina_panther: { first_name: @carolina_panther.first_name, last_name: @carolina_panther.last_name, number: @carolina_panther.number, position: @carolina_panther.position, years_pro: @carolina_panther.years_pro }
    end

    assert_redirected_to carolina_panther_path(assigns(:carolina_panther))
  end

  test "should show carolina_panther" do
    get :show, id: @carolina_panther
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carolina_panther
    assert_response :success
  end

  test "should update carolina_panther" do
    patch :update, id: @carolina_panther, carolina_panther: { first_name: @carolina_panther.first_name, last_name: @carolina_panther.last_name, number: @carolina_panther.number, position: @carolina_panther.position, years_pro: @carolina_panther.years_pro }
    assert_redirected_to carolina_panther_path(assigns(:carolina_panther))
  end

  test "should destroy carolina_panther" do
    assert_difference('CarolinaPanther.count', -1) do
      delete :destroy, id: @carolina_panther
    end

    assert_redirected_to carolina_panthers_path
  end
end
