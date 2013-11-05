class AreasReports < ActiveRecord::Base
  has_many :area
  has_many :report
end
