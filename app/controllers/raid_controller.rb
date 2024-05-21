class RaidController < ApplicationController
  
  def index
    @factions = Faction.all
    @faction = Faction.new

    @rarities = Rarity.all
    @rarity = Rarity.new
  end

  def create_faction
    @faction = Faction.new(faction_params)
    if @faction.save
      @factions = Faction.all
      redirect_to raid_path, notice: 'Faction was successfully created.'
    else
      @factions = Faction.all
      render :index
    end
  end

  def create_rarity
    @rarity = Rarity.new(rarity_params)
    if @rarity.save
      @rarities = Rarity.all
      redirect_to raid_path, notice: 'Rarity was successfully created.'
    else
      @rarities = Rarity.all
      render :index
    end
  end
  
  private

    def faction_params
      params.require(:faction).permit(:name)
    end

    def rarity_params
      params.require(:rarity).permit(:name)
    end

end