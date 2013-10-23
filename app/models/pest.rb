class Pest < ActiveRecord::Base
  belongs_to :colour, inverse_of: :pests
  has_and_belongs_to_many :markings
  has_and_belongs_to_many :sources
  has_many :sightings, inverse_of: :pest
  #may not work
  has_many :reports, through: :sightings
end
