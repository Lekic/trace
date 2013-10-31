class Phone < ActiveRecord::Base
  belongs_to :phone_type, inverse_of: :phones
  belongs_to :user, inverse_of: :phones

  #validates :country_code, presense: true, :numericality => { :greater_than => 0, :less_than_or_equal_to => 1876 }
  #validates :area_code, presense: true
  #validates :phone, presense: true
end
