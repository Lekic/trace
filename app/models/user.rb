class User < ActiveRecord::Base
  has_one :person_type
  has_one :park
  belongs_to :sighting
end
