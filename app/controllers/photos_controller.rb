require 'httparty'

class PhotosController < ApplicationController
  def new
    response = HTTParty.get("https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=0da305fa43a4c6834cfefe751fb703ea&lat=25.807&lon=-80.199165&radius=19&per_page=30&format=json&nojsoncallback=1")
    JSON.parse response.body
  end

  def index
    @photos = Photo.all
  end


end
