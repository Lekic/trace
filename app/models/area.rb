class Area < ActiveRecord::Base
  has_many :parks, inverse_of: :area
end
