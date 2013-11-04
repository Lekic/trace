class CreateReportsSightings < ActiveRecord::Migration
  def change
    create_table :reports_sightings do |t|
      t.belongs_to :report, null: false
      t.belongs_to :sighting, null: false

      t.timestamps
    end
  end
end
