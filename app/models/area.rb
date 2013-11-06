# @author Daniel Lekic and Hayden Bleasel
class Area < ActiveRecord::Base
  has_many :parks, inverse_of: :area
  has_and_belongs_to_many :reports
end