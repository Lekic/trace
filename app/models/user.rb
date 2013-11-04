class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :authentication_keys => [:login]
  
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login

  before_save { self.email = email.downcase }
  belongs_to :person_type, inverse_of: :users
  belongs_to :park, inverse_of: :users
  has_many :phones, inverse_of: :user
  has_many :reports, inverse_of: :user
  has_many :sightings, inverse_of: :user

  accepts_nested_attributes_for :phones

  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i #for reference
  
  # add any other characters you'd like to disallow inside the [ brackets ]
  # metacharacters [, \, ^, $, ., |, ?, *, +, (, and ) need to be escaped with a \
  NAME_CASE_REGEX = /\A[^0-9`!@#\$%\^&*+_=]+\z/
  USERNAME_REGEX = /\A[a-zA-Z0-9]+\z/

  def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
    end

  validates :username, presence: true, length: { minimum: 5},
                       uniqueness: {case_sensitive: false },
                       format: { with: USERNAME_REGEX}

  validates :contact_number, phone_number: {ten_digits: true, message: "must be 10 digits" }

  validates :name, presence: true, length: { minimum: 5, maximum: 30 }, format: { with: NAME_CASE_REGEX}

end
