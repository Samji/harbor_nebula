require "test_helper"

class RaidControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Harbor Nebula"
  end
  
  test "should get index" do
    get raid_path
    assert_response :success
    assert_select "title", "RSL | #{@base_title}"
  end
end
