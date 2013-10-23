class CreateMarkingsPests < ActiveRecord::Migration
  def change
    create_table :markings_pests do |t|
      t.references :marking, null: false
      t.references :pest, null: false

      t.timestamps
    end
  end
end
