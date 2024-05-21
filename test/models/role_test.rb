require "test_helper"

class RoleTest < ActiveSupport::TestCase
  def setup
    @role = Role.new(name: "Attack")
  end

  test "should be valid" do
    assert @role.valid?
  end

  test "name should be present" do
    @role.name = " "
    assert_not @role.valid?
  end

  test "name should be unique" do
    duplicate_role = @role.dup
    @role.save
    assert_not duplicate_role.valid?
  end
end
