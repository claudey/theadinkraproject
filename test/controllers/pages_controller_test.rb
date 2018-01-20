require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get :index
    assert_response :success
  end

    test "should get about" do
    get :about
    assert_response :success
  end

    test "should get help" do
    get :help
    assert_response :success
  end
    
  test "should get wiki" do
    get :wiki
    assert_response :success
  end

    test "should get process" do
    get :process
    assert_response :success
  end
end
