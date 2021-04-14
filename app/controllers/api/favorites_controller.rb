class Api::FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render "index.json.jb"
  end

  def create
    @favorite = Favorite.new(
      song_id: params[:song_id],
      artist_id: params[:artist_id],
      user_id: params[:user_id],
    )
  end

  def destroy
    favorite_id = params["id"]
    @favorite = Favorite.find_by(id: favorite_id)
    @favorite.destroy
    render json: { message: "Removed Favorite" }
  end
end
