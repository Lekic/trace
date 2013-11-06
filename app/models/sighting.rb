# @author Daniel Lekic and Hayden Bleasel
class Sighting < ActiveRecord::Base
  belongs_to :pest, inverse_of: :sightings
  has_and_belongs_to_many :reports
  belongs_to :park, inverse_of: :sightings
  belongs_to :user, inverse_of: :sightings
  
  validates :pest, presence: true
  validates :quantity, inclusion: { :in => 1..100, message: "must be less than 100." }, allow_nil: true
  validates :park, presence: true
  validates :information, length: { maximum: 1000, message: "cannot exceed 1000 characters." }
  validates :user, presence: true

end