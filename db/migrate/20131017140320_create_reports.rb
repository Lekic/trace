class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.references :user, index: true
      #t.references :sighting, index: true

      t.timestamps
    end
  end
end
