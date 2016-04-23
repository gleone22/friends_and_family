class PhotosController < ApplicationController
  def new
    # Httparty will go here to pull the images
  end

  def index
    @photos = Photo.all
  end


end
