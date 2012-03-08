require 'test_helper'

class ReserveFunctionRoomsControllerTest < ActionController::TestCase
  setup do
    @reserve_function_room = reserve_function_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserve_function_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserve_function_room" do
    assert_difference('ReserveFunctionRoom.count') do
      post :create, reserve_function_room: @reserve_function_room.attributes
    end

    assert_redirected_to reserve_function_room_path(assigns(:reserve_function_room))
  end

  test "should show reserve_function_room" do
    get :show, id: @reserve_function_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserve_function_room
    assert_response :success
  end

  test "should update reserve_function_room" do
    put :update, id: @reserve_function_room, reserve_function_room: @reserve_function_room.attributes
    assert_redirected_to reserve_function_room_path(assigns(:reserve_function_room))
  end

  test "should destroy reserve_function_room" do
    assert_difference('ReserveFunctionRoom.count', -1) do
      delete :destroy, id: @reserve_function_room
    end

    assert_redirected_to reserve_function_rooms_path
  end
end
