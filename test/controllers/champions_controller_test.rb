require "test_helper"

class ChampionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get champions_new_url
    assert_response :success
  end
end
