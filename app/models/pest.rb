class Pest < ActiveRecord::Base
  has_many :sources
  has_one :tracker_type
  has_many :markings
  has_one :colour
  has_many :sighting
end
