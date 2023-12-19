require "test_helper"

class ChampionTest < ActiveSupport::TestCase
  
  def setup
    @champion = Champion.new(name: "Ronda", faction: "Banner Lords", rarity: "Legendary", role: "Attack", affinity: "Magic")
  end

  test "should be valid" do
    assert @champion.valid?
  end
  
  test "name should be present" do
    @champion.name = "     "
    assert_not @champion.valid?
  end
    
  test "faction should be present" do
    @champion.faction = "     "
    assert_not @champion.valid?
  end
  
  test "rarity should be present" do
    @champion.rarity = "     "
    assert_not @champion.valid?
  end
  
  test "role should be present" do
    @champion.role = "     "
    assert_not @champion.valid?
  end
  
  test "affinity should be present" do
    @champion.affinity = "     "
    assert_not @champion.valid?
  end
    
end
