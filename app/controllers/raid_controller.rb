class RaidController < ApplicationController
  
  def index
    @factions = Faction.all
    @rarities = Rarity.all
    @roles = Role.all
    @affinities = Affinity.all
  end
  
  def new
    @faction = Faction.new
    @rarity = Rarity.new
    @role = Role.new
    @affinity = Affinity.new
  end

  def create
    @faction = Faction.new(faction_params)
    if @faction.save
      @factions = Faction.all
      redirect_to raid_path, notice: 'Faction was successfully created.'
    else
      @factions = Faction.all
      render :new
    end
  end
  
  private

    def faction_params
      params.require(:faction).permit(:name)
    end

    def rarity_params
      params.require(:rarity).permit(:name)
    end

    def role_params
      params.require(:role).permit(:name)
    end

    def affinity_params
      params.require(:affinity).permit(:name)
    end

end