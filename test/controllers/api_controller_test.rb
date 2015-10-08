require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get addUser" do
    get :addUser
    assert_response :success
  end

  test "should get comment" do
    get :comment
    assert_response :success
  end

  test "should get confirmEmail" do
    get :confirmEmail
    assert_response :success
  end

  test "should get deleterPost" do
    get :deleterPost
    assert_response :success
  end

  test "should get post" do
    get :post
    assert_response :success
  end

  test "should get profileUpdate" do
    get :profileUpdate
    assert_response :success
  end

  test "should get rate" do
    get :rate
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get postUpdate" do
    get :postUpdate
    assert_response :success
  end

  test "should get keyRequest" do
    get :keyRequest
    assert_response :success
  end

end
