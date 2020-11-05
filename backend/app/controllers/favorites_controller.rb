class FavoritesController < ApplicationController

    def create
        Favorite.create({
            user_id: params[:user_id],
            team_id: params[:team_id]
        })
        user = User.find_by({id: params[:user_id]})
        render json: user, include: [ :favorites ]
    end

    def delete
        fav = Favorite.find_by(user_id: params[:user_id], team_id: params[:team_id])
        fav.delete
        user = User.find_by(id: params[:user_id])
        render json: user, include: [ :favorites ]
    end

end