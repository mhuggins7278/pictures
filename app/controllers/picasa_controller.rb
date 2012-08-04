class PicasaController < ApplicationController
  def repository
    @@repo = PicasaWebAlbums.get_repository('mhuggins7278@gmail.com', 'bruins77')
  end

  def albums
  #picasa = Picasa::Picasa.new
  #picasa.login("mhuggins7278@gmail.com", "bruins77")
  #picasa.picasa_session.auth_key
  #@albums = picasa.albums(:access => "all")
  #@repo = PicasaWebAlbums.get_repository('mhuggins7278@gmail.com', 'bruins77')
  repository
  @albums = @@repo.get_all_albums
  end

  def photos
  @id = params[:id]
  @name = params[:name]
  #repo = PicasaWebAlbums.get_repository('mhuggins7278@gmail.com', 'bruins77')
  repository

  @photos=@@repo.get_photos_by_album_id(@id)

  #picasa = Picasa::Picasa.new
  #picasa.login("mhuggins7278@gmail.com", "bruins77")
  #picasa.picasa_session.auth_key
  #@photos = picasa.photos(:album => @name )
  end




end
