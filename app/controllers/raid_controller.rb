class RaidController < ApplicationController
  
  def index
    @factions = Faction.all
    @faction = Faction.new

    @rarities = Rarity.all
    @rarity = Rarity.new
    
    @affinities = Affinity.all
    @affinity = Affinity.new

    @roles = Role.all
    @role = Role.new
  end

  def create_faction
    @faction = Faction.new(faction_params)
    if @faction.save
      @factions = Faction.all
      @faction = Faction.new
      @rarities = Rarity.all
      @rarity = Rarity.new
      @affinities = Affinity.all
      @affinity = Affinity.new
      @roles = Role.all
      @role = Role.new
      redirect_to raid_path, notice: 'Faction was successfully created.'
    else
      @factions = Faction.all
      @faction = Faction.new
      @rarities = Rarity.all
      @affinities = Affinity.all
      @roles = Role.all
      render :index
    end
  end

  def create_rarity
    @rarity = Rarity.new(rarity_params)
    if @rarity.save
      redirect_to raid_path, notice: 'Rarity was successfully created.'
    else
      @factions = Faction.all
      @rarities = Rarity.all
      @rarity = Rarity.new
      @affinities = Affinity.all
      @roles = Role.all
      render :index
    end
  end

  def create_affinity
    @affinity = Affinity.new(affinity_params)
    if @affinity.save
      redirect_to raid_path, notice: 'Affinity was successfully created.'
    else
      @factions = Faction.all
      @rarities = Rarity.all
      @affinities = Affinity.all
      @affinity = Affinity.new
      @roles = Role.all
      render :index
    end
  end

  def create_role
    @role = Role.new(role_params)
    if @role.save
      redirect_to raid_path, notice: 'Role was successfully created.'
    else
      @factions = Faction.all
      @rarities = Rarity.all
      @affinities = Affinity.all
      @roles = Role.all
      @role = Role.new
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

    def affinity_params
      params.require(:affinity).permit(:name)
    end

    def role_params
      params.require(:role).permit(:name)
    end

end