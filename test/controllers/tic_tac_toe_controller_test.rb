require 'test_helper'

class TicTacToeControllerTest < ActionDispatch::IntegrationTest
  test "should get play" do
    get tic_tac_toe_play_url
    assert_response :success
  end

end
