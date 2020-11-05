class CompetitionsController < ApplicationController

    def index
        competitions = Competition.all
        render json: competitions
    end

    def get_country_comps
        competitions = Competition.where({country: params[:country]})
        render json: competitions
    end

end