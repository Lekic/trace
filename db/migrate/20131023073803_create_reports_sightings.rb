class CreateReportsSightings < ActiveRecord::Migration
  def change
    create_table :reports_sightings do |t|
      t.references :report, null: false
      t.references :sighting, null: false

      t.timestamps
    end
  end
end
