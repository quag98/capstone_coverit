class Api::SongsController < ApplicationController
  def index
    @songs = Song.all
    render "index.json.jb"
  end

  def show
    id_search = params["id"]
    @song = Song.find_by(id: id_search)
    render "show.json.jb"
  end

  def create
    @song = Song.new(
      title: params[:title],
      description: params[:description],
      audio_link: params[:audio_link],
      artist_id: params[:artist_id]
    )
    if @song.save
      render "show.json.jb"
    else
      render json: { errors: @song.errors.full_messages }, status: 406
    end
  end
end
