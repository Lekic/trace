class Sighting < ActiveRecord::Base
  belongs_to :pest
  belongs_to :park
  belongs_to :reporter
end
