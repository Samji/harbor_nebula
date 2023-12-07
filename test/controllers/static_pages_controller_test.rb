require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get raid_shadow_legends" do
    get static_pages_raid_shadow_legends_url
    assert_response :success
  end
end
