class PhoneType < ActiveRecord::Base
  has_many :phones, inverse_of: :phone_type
end
