require 'test_helper'

class WxUsersControllerTest < ActionController::TestCase
  setup do
    @wx_user = wx_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wx_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wx_user" do
    assert_difference('WxUser.count') do
      post :create, wx_user: { mobile: @wx_user.mobile, money: @wx_user.money, name: @wx_user.name, wx_name: @wx_user.wx_name }
    end

    assert_redirected_to wx_user_path(assigns(:wx_user))
  end

  test "should show wx_user" do
    get :show, id: @wx_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wx_user
    assert_response :success
  end

  test "should update wx_user" do
    patch :update, id: @wx_user, wx_user: { mobile: @wx_user.mobile, money: @wx_user.money, name: @wx_user.name, wx_name: @wx_user.wx_name }
    assert_redirected_to wx_user_path(assigns(:wx_user))
  end

  test "should destroy wx_user" do
    assert_difference('WxUser.count', -1) do
      delete :destroy, id: @wx_user
    end

    assert_redirected_to wx_users_path
  end
end
