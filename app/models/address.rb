class Address < ActiveRecord::Base
  has_one :addressType
end
