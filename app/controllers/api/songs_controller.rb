class Api::SongsController < ApplicationController
  def index
    @songs = Songs.all
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
    )
end
