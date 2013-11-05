class CreateSightings < ActiveRecord::Migration
  def change
    #drop_table :sightings this line resets the table
    create_table :sightings do |t|
      t.references :pest, index: true
      t.integer :quantity
      #t.decimal :latitude
      #t.decimal :longitude
      t.references :park, index: true
      t.datetime :time_sighted
      t.string :information
      t.references :user, index: true

      t.timestamps
    end
  end
end
