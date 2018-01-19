require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

    test "should get about" do
    get pages_about_url
    assert_response :success
  end

    test "should get help" do
    get pages_help_url
    assert_response :success
  end
    
  test "should get wiki" do
    get pages_wiki_url
    assert_response :success
  end

    test "should get process" do
    get pages_process_url
    assert_response :success
  end
end
