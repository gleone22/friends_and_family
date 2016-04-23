class PhotosController < ApplicationController
  def new
  end

  def index
    @photos = Photo.all
  end



end
