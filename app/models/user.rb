class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  has_one :person_type
  has_one :park
  belongs_to :sighting

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  NAME_CASE_REGEX = /\A([A-Z][a-zA-Z\'\-]+ ?)*/i

  validates :name, presence: true, length: { minimum: 5 }, format: { with: NAME_CASE_REGEX }
  
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness:  { case_sensitive: false }
  validates :username, presence: true, length: { minimum: 5},
                       uniqueness:  { case_sensitive: false }
  validates :password, presence: true
end
