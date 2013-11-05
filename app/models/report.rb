class Report < ActiveRecord::Base
  belongs_to :user, inverse_of: :reports
  has_and_belongs_to_many :sightings
  has_many :pests, through: :sightings

  validates :start_date, presence: true
  validates :end_date, presence: true, timeliness: {after: start_date}
end
