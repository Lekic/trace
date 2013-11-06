# @author Daniel Lekic and Hayden Bleasel
class Park < ActiveRecord::Base
	has_many :users, inverse_of: :park
	has_many :sightings, inverse_of: :park
	belongs_to :area, inverse_of: :parks
end
