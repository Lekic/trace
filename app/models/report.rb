class Report < ActiveRecord::Base
  belongs_to :user, inverse_of: :reports
  has_and_belongs_to_many :sightings
  has_many :pests, through: :sightings
end
