class AlbumsSongsController < ApplicationController

  def new
    @song = Song.new
    @albums = Album.where(:artist_id => params[:artist_id])
    @artist = Artist.find(params[:artist_id])
  end


  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(song_params)
    @song.artist_id = params[:artist_id]
    if @song.save
      redirect_to songs_path
    else 
      render 'new'
    end
  end

  # PUT /songs/1
  # PUT /songs/1.json
	protected

	  def song_params
	    params.require(:song).permit(:title, :album_id)
	  end
 
end
