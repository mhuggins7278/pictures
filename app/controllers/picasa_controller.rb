class PicasaController < ApplicationController
  def albums
  picasa = Picasa::Picasa.new
  picasa.login("mhuggins7278@gmail.com", "bruins77")
  picasa.picasa_session.auth_key
  @albums = picasa.albums(:access => "all")
  end

  def photos
  @name = params[:name]
  picasa = Picasa::Picasa.new
  picasa.login("mhuggins7278@gmail.com", "bruins77")
  picasa.picasa_session.auth_key
  @photos = picasa.photos(:album => @name )
  end
end
