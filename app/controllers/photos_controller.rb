require 'httparty'

class PhotosController < ApplicationController
  def new

  end

  def index
    @photos = Photo.new
  end


end
