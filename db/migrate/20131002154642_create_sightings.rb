class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.references :pest, index: true
      t.references :park, index: true
      t.datetime :time_sighted
      t.string :information
      t.references :reporter, index: true

      t.timestamps
    end
  end
end
