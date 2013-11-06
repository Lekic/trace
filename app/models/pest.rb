# @author Daniel Lekic and Hayden Bleasel
class Pest < ActiveRecord::Base
  belongs_to :colour, inverse_of: :pests
  belongs_to :pest_type, inverse_of: :pests
  has_and_belongs_to_many :markings
  belongs_to :source, inverse_of: :pests
  has_many :sightings, inverse_of: :pest
  has_many :reports, through: :sightings

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_irl: "/images/:style/missing.png"

  # add any other characters you'd like to disallow inside the [ brackets ]
  # metacharacters [, \, ^, $, ., |, ?, *, +, (, and ) need to be escaped with a \
  NAME_CASE_REGEX = /\A[^0-9`!@#\$%\^&*+_=]+\z/

  validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 30}, format: { with: NAME_CASE_REGEX }
  validates :tracker_id, uniqueness: true, inclusion: { :in => 1..99999, message: "must be between 1-99999" }, allow_nil: true
  validates :pest_type, presence: true
  validates :source, presence: true
  validates :characteristics, length: { maximum: 1000, message: "cannot exceed 1000 characters."}
  validates :size, presence: true, inclusion: { :in => 1..200, message: "must be between 1-200" }
  validates :colour_id, presence: true
end
