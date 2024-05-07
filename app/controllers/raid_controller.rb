class RaidController < ApplicationController
  
  def index
    @champions = Champion.all
  end
  
  def new
    @champion = Champion.new
    @faction = Faction.new
  end
  
end