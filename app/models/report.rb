class Report < ActiveRecord::Base
  has_one :user
  has_many :sightings
  has_many :pests, :through => :sightings
end
