class RaidController < ApplicationController
  
  def index
    @factions = Faction.all
    @rarities = Rarity.all
    @roles = Role.all
    @affinities = Affinity.all
  end
  
  def new
    @faction = Faction.new
  end

  def create
    @faction = Faction.new(faction_params)
    if @faction.save
      @factions = Faction.all
      redirect_to raid_path, notice: 'Faction was successfully created.'
    else
      @factions = Faction.all
      logger.debug @faction.errors.full_messages.to_sentence
      render :index
    end
  end
  
  private

    def faction_params
      params.require(:faction).permit(:name)
    end

end