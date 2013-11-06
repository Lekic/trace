# @author Daniel Lekic and Hayden Bleasel
class MarkingsPests < ActiveRecord::Base
  has_many :markings
  has_many :pests
end
