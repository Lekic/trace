class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.references :pest, index: true
      t.integer :quantity
      #t.decimal :latitude
      #t.decimal :longitude
      t.references :park, index: true
      t.references :area
      t.datetime :time_sighted
      t.string :information
      t.references :user, index: true

      t.timestamps
    end
  end
end
