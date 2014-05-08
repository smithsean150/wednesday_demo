require 'test_helper'

class CarolinasControllerTest < ActionController::TestCase
  setup do
    @carolina = carolinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carolinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carolina" do
    assert_difference('Carolina.count') do
      post :create, carolina: { Panthers: @carolina.Panthers, first_name: @carolina.first_name, last_name: @carolina.last_name, number: @carolina.number, position: @carolina.position, years_pro: @carolina.years_pro }
    end

    assert_redirected_to carolina_path(assigns(:carolina))
  end

  test "should show carolina" do
    get :show, id: @carolina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carolina
    assert_response :success
  end

  test "should update carolina" do
    patch :update, id: @carolina, carolina: { Panthers: @carolina.Panthers, first_name: @carolina.first_name, last_name: @carolina.last_name, number: @carolina.number, position: @carolina.position, years_pro: @carolina.years_pro }
    assert_redirected_to carolina_path(assigns(:carolina))
  end

  test "should destroy carolina" do
    assert_difference('Carolina.count', -1) do
      delete :destroy, id: @carolina
    end

    assert_redirected_to carolinas_path
  end
end
