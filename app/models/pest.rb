class Pest < ActiveRecord::Base
  has_many :source
  has_one :tracker_type
  has_many :marking
  has_one :colour
  belongs_to :sighting
end
