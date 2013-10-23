class Colour < ActiveRecord::Base
  has_many :pests, inverse_of: :colour
end
