# @author Daniel Lekic and Hayden Bleasel
class PestType < ActiveRecord::Base
  has_many :pests, inverse_of: :pest_type
end
