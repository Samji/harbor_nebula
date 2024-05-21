require "test_helper"

class RarityTest < ActiveSupport::TestCase
  def setup
    @rarity = Rarity.new(name: "Legendary")
  end

  test "should be valid" do
    assert @rarity.valid?
  end

  test "name should be present" do
    @rarity.name = " "
    assert_not @rarity.valid?
  end

  test "name should be unique" do
    duplicate_rarity = @rarity.dup
    @rarity.save
    assert_not duplicate_rarity.valid?
  end
end