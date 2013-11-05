class Report < ActiveRecord::Base
  belongs_to :user, inverse_of: :reports
  has_and_belongs_to_many :sightings
  has_many :pests, through: :sightings

  validates_date :start_date, presence: true
  validates_date :end_date, presence: true, timeliness: {after: start_date}
end
