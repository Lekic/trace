class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.date :date_created
      t.references :user, index: true
      t.references :sighting, index: true

      t.timestamps
    end
  end
end
