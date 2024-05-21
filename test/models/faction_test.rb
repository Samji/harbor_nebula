require "test_helper"

class FactionTest < ActiveSupport::TestCase
  def setup
    @faction = Faction.new(name: "Banner Lords")
  end

  test "should be valid" do
    assert @faction.valid?
  end

  test "name should be present" do
    @faction.name = " "
    assert_not @faction.valid?
  end

  test "name should be unique" do
    duplicate_faction = @faction.dup
    @faction.save
    assert_not duplicate_faction.valid?
  end
end
