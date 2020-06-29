require 'test_helper'

class JunkControllerTest < ActionDispatch::IntegrationTest
  test "should get play" do
    get junk_play_url
    assert_response :success
  end

end
