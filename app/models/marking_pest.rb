class MarkingPest < ActiveRecord::Base
  has_many :markings
  has_many :pests
end
