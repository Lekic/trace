# @author Daniel Lekic and Hayden Bleasel
class AreasReports < ActiveRecord::Base
  has_many :area
  has_many :report
end
