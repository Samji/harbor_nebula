require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Project Harbor Nebula"
  end

  test "should get raid_shadow_legends" do
    get raid_path
    assert_response :success
    assert_select "title", "RSL | Project Harbor Nebula"
  end
  
  test "should get eve_online" do
    get eve_path
    assert_response :success
    assert_select "title", "EVE Online | Project Harbor Nebula"
  end
end