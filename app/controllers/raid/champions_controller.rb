class Raid::ChampionsController < ApplicationController
    def index
        @champions = Champion.all
        @champion = Champion.new
    end
end
