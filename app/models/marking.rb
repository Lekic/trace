class Marking < ActiveRecord::Base
  has_and_belongs_to_many :pests
end
