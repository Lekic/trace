class PersonType < ActiveRecord::Base
  has_many :users, inverse_of: :person_type
end
