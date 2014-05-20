class SongsController < ApplicationController
  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @songs }
    end
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
    @song = Song.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @song }
    end
  end

  # GET /songs/new
  # GET /songs/new.json
  def new
    @song = Song.new
    @artists = Artist.all
    @albums = Album.all
  end

  # GET /songs/1/edit
  def edit
    @song = Song.find(params[:id])
    @artists = Artist.all
    @albums = Album.all
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to songs_path
    else 
      render 'new'
    end
  end

  # PUT /songs/1
  # PUT /songs/1.json

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      flash[:success] = "Song updated!"
      redirect_to songs_path
    else
      render 'edit'
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    respond_to do |format|
      format.html { redirect_to songs_url }
      format.json { head :no_content }
    end
  end

  protected

  def song_params
    params.require(:song).permit(:title, :artist_id, :album_id)
  end
end
