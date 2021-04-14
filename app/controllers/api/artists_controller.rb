class Api::ArtistsController < ApplicationController
  def show
    id_search = params["id"]
    @artist = Artist.find_by(id: id_search)
    render show.json.jb
  end

  def create
    @artist = Artist.new(
      name: params[:name],
      song_id: params[:song_id],
    )
    if @artist.save
      render "show.json.jb"
    else
      render json: { errors: @artis.errors.full_message }, status: 406
    end
  end

  def update
  end
end
