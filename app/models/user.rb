class User < ActiveRecord::Base
  has_one :personType
  has_one :park
end
