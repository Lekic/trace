class CreateMarkings < ActiveRecord::Migration
  def change
    create_table :markings do |t|
      t.string :marking, unique: true
      #t.references :pest, index: true

      t.timestamps
    end
  end
end
