class Photo < ActiveRecord::Base
  has_many :comments :likes

  @photos = Photo.all

end
