# @author Daniel Lekic and Hayden Bleasel
class Colour < ActiveRecord::Base
  has_many :pests, inverse_of: :colour
end
