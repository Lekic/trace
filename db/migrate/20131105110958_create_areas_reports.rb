class CreateAreasReports < ActiveRecord::Migration
  def change
    create_table :areas_reports do |t|
      t.belongs_to :area, index: true
      t.belongs_to :report, index: true

      t.timestamps
    end
  end
end
