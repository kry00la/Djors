require 'test_helper'

class MenuTypesControllerTest < ActionController::TestCase
  setup do
    @menu_type = menu_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_type" do
    assert_difference('MenuType.count') do
      post :create, menu_type: @menu_type.attributes
    end

    assert_redirected_to menu_type_path(assigns(:menu_type))
  end

  test "should show menu_type" do
    get :show, id: @menu_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_type
    assert_response :success
  end

  test "should update menu_type" do
    put :update, id: @menu_type, menu_type: @menu_type.attributes
    assert_redirected_to menu_type_path(assigns(:menu_type))
  end

  test "should destroy menu_type" do
    assert_difference('MenuType.count', -1) do
      delete :destroy, id: @menu_type
    end

    assert_redirected_to menu_types_path
  end
end
