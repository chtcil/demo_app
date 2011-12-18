require 'test_helper'

class EmpolyeesControllerTest < ActionController::TestCase
  setup do
    @empolyee = empolyees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empolyees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empolyee" do
    assert_difference('Empolyee.count') do
      post :create, empolyee: @empolyee.attributes
    end

    assert_redirected_to empolyee_path(assigns(:empolyee))
  end

  test "should show empolyee" do
    get :show, id: @empolyee.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empolyee.to_param
    assert_response :success
  end

  test "should update empolyee" do
    put :update, id: @empolyee.to_param, empolyee: @empolyee.attributes
    assert_redirected_to empolyee_path(assigns(:empolyee))
  end

  test "should destroy empolyee" do
    assert_difference('Empolyee.count', -1) do
      delete :destroy, id: @empolyee.to_param
    end

    assert_redirected_to empolyees_path
  end
end
