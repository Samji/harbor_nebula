require "test_helper"

class ChampionTest < ActiveSupport::TestCase
  
  def setup
    @faction = Faction.create!(name: "Banner Lords")
    @rarity = Rarity.create!(name: "Legendary")
    @role = Role.create!(name: "Attack")
    @affinity = Affinity.create!(name: "Force")
    @champion = Champion.new(name: "Ronda", faction: @faction, rarity: @rarity, role:  @role, affinity: @affinity)
  end

  test "should be valid" do
    assert @champion.valid?
  end

  test "name should be present" do
    @champion.name = " "
    assert_not @champion.valid?
  end

  test "should have a faction" do
    @champion.faction = nil
    assert_not @champion.valid?
  end

  test "should have a rarity" do
    @champion.rarity = nil
    assert_not @champion.valid?
  end

  test "should have a role" do
    @champion.role = nil
    assert_not @champion.valid?
  end

  test "should have a affinity" do
    @champion.affinity = nil
    assert_not @champion.valid?
  end
    
end
