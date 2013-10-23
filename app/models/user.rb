class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_save { self.email = email.downcase }
  belongs_to :person_type, inverse_of: :users
  belongs_to :park, inverse_of: :users
  has_many :phones, inverse_of: :user
  has_many :reports, inverse_of: :user
  has_many :sightings, inverse_of: :user

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  NAME_CASE_REGEX = /\A([A-Z][a-zA-Z\'\-]+ ?)*/i
  USERNAME_REGEX = /\A[a-z]{5,20}\z/

  validates_presence_of :username
  validates_uniqueness_of :username

#  validates :name, presence: true, length: { minimum: 5 }, format: { with: NAME_CASE_REGEX }
  
#  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
#                    uniqueness:  { case_sensitive: false }
#  validates :username, presence: true, length: { minimum: 5},
#                       uniqueness:  { case_sensitive: false }
#  validates :password, presence: true

end
