class Pest < ActiveRecord::Base
  has_many :source
  has_one :trackerType
  has_many :marking
  has_one :colour
end
