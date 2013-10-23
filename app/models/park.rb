class Park < ActiveRecord::Base
	has_many :users, inverse_of: :park
	has_many :sightings, inverse_of: :park
end
