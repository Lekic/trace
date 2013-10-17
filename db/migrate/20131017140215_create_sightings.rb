class CreateSightings < ActiveRecord::Migration
  def change
    #drop_table :sightings this line resets the table
    create_table :sightings do |t|
      t.references :pest, index: true
      t.float :latitude
      t.float :longitude
      t.references :park, index: true
      t.datetime :time_sighted
      t.string :information
      t.references :user, index: true

      t.timestamps
    end
  end
end
