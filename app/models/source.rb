class Source < ActiveRecord::Base
  has_many :pests, inverse_of: :source
end
