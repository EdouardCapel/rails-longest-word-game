require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get news" do
    get games_news_url
    assert_response :success
  end

  test "should get score" do
    get games_score_url
    assert_response :success
  end

end
