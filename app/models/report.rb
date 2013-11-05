class Report < ActiveRecord::Base
  belongs_to :user, inverse_of: :reports
  has_and_belongs_to_many :sightings
  has_and_belongs_to_many :areas
  has_many :pests, through: :sightings

  validates_datetime :start_date, presence: true
  validates_datetime :end_date, presence: true, timeliness: {after: start_date}
end
