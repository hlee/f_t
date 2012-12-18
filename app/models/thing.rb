class Thing < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :image_url, :name
end
