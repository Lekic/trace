class Phone < ActiveRecord::Base
  belongs_to :phone_type, inverse_of: :phones
  belongs_to :user, inverse_of: :phones
end
