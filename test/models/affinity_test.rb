require "test_helper"

class AffinityTest < ActiveSupport::TestCase
  def setup
    @affinity = Affinity.new(name: "Force")
  end

  test "should be valid" do
    assert @affinity.valid?
  end

  test "name should be present" do
    @affinity.name = " "
    assert_not @affinity.valid?
  end

  test "name should be unique" do
    duplicate_affinity = @affinity.dup
    @affinity.save
    assert_not duplicate_affinity.valid?
  end
end
