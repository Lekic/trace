# @author Daniel Lekic and Hayden Bleasel
class Source < ActiveRecord::Base
  has_many :pests, inverse_of: :source
end
