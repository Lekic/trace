class Address < ActiveRecord::Base
  has_one :address_type
end
