class User < ActiveRecord::Base
  has_one :person_type
  has_one :park
  belongs_to :sighting
  validates :name, presence: true, length: { minimum: 5 }
end
