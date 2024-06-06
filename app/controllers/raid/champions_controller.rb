class Raid::ChampionsController < ApplicationController
    def index
        @factions = Faction.all
        @rarities = Rarity.all
        @affinities = Affinity.all
        @roles = Role.all

        @champions = Champion.all
        @champions = @champions.where(faction_id: params[:faction_id]) if params[:faction_id].present?
        @champions = @champions.where(rarity_id: params[:rarity_id]) if params[:rarity_id].present?
        @champions = @champions.where(affinity_id: params[:affinity_id]) if params[:affinity_id].present?
        @champions = @champions.where(role_id: params[:role_id]) if params[:role_id].present?
    end
end
