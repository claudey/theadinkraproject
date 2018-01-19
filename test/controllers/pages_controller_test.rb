require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get process" do
    get pages_process_url
    assert_response :success
  end

end
