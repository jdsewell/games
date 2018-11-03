require 'test_helper'

class RockPaperScissorsControllerTest < ActionDispatch::IntegrationTest
  test "should get play" do
    get rock_paper_scissors_play_url
    assert_response :success
  end

end
