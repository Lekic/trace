class Sighting < ActiveRecord::Base
  has_one :pest
  has_one :park
  has_one :reporter
  belongs_to :report
end
