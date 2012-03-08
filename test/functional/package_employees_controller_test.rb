require 'test_helper'

class PackageEmployeesControllerTest < ActionController::TestCase
  setup do
    @package_employee = package_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_employee" do
    assert_difference('PackageEmployee.count') do
      post :create, package_employee: @package_employee.attributes
    end

    assert_redirected_to package_employee_path(assigns(:package_employee))
  end

  test "should show package_employee" do
    get :show, id: @package_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_employee
    assert_response :success
  end

  test "should update package_employee" do
    put :update, id: @package_employee, package_employee: @package_employee.attributes
    assert_redirected_to package_employee_path(assigns(:package_employee))
  end

  test "should destroy package_employee" do
    assert_difference('PackageEmployee.count', -1) do
      delete :destroy, id: @package_employee
    end

    assert_redirected_to package_employees_path
  end
end
