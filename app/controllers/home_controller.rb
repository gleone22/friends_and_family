require 'httparty'
require 'pp'
require 'nokogiri'

class HomeController < ApplicationController
  def index
  end

  def map



lat = "42.313479"
long = "-71.1273687"

base_url = "https://api.flickr.com/services/rest/"

params = "?method=flickr.photos.search&api_key=2a30e293c0809c659d40e281d1676862&lat=#{lat}&lon=#{long}&format=json&nojsoncallback=1"

full_url = base_url + params

response = HTTParty.get(full_url).parsed_response
# pp response  # pretty print will give you an visual of the Hash layout. uncomment this to see.

  response['photos']['photo'].each do |i|  # this took me a minute to figure out..
    puts "Each ID=> #{i["id"]} --Each owner=> #{i["owner"]} --Each secret=> #{i["secret"]}-- each server=> #{i["server"]}-- farm=> #{i["farm"]}"

  end
  end
end
