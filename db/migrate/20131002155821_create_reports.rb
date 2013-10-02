class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.datetime :date_created
      t.references :creator, index: true
      t.references :sighting, index: true

      t.timestamps
    end
  end
end
