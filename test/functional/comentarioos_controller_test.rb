require 'test_helper'

class ComentarioosControllerTest < ActionController::TestCase
  setup do
    @comentarioo = comentarioos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comentarioos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comentarioo" do
    assert_difference('Comentarioo.count') do
      post :create, :comentarioo => @comentarioo.attributes
    end

    assert_redirected_to comentarioo_path(assigns(:comentarioo))
  end

  test "should show comentarioo" do
    get :show, :id => @comentarioo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @comentarioo.to_param
    assert_response :success
  end

  test "should update comentarioo" do
    put :update, :id => @comentarioo.to_param, :comentarioo => @comentarioo.attributes
    assert_redirected_to comentarioo_path(assigns(:comentarioo))
  end

  test "should destroy comentarioo" do
    assert_difference('Comentarioo.count', -1) do
      delete :destroy, :id => @comentarioo.to_param
    end

    assert_redirected_to comentarioos_path
  end
end
