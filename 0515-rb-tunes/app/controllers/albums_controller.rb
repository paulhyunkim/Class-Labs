class AlbumsController < ApplicationController
  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albums }
    end
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = Album.find(params[:id])
    @potential_songs = Song.where(:artist_id => @album.artist.id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/new
  # GET /albums/new.json
  def new
    @album = Album.new
    @artists = Artist.all
  end

  # GET /albums/1/edit
  def edit
    @album = Album.find(params[:id])
    @artists = Artist.all
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_path
    else 
      render 'new'
    end
  end

  # PUT /albums/1
  # PUT /albums/1.json

  def update
    @album = Album.find(params[:id])

    if @album.update(album_params)
      flash[:success] = "Album updated!"
      redirect_to albums_path
    else
      render 'edit'
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to albums_url }
      format.json { head :no_content }
    end
  end

  protected

  def album_params
    params.require(:album).permit(:name, :platinum, :artist_id)
  end
end
