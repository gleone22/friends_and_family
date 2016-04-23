class Like < ActiveRecord::Base
    belongs_to :photos, :comments
end
