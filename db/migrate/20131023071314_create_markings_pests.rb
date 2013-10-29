class CreateMarkingsPests < ActiveRecord::Migration
  def change
    create_table :markings_pests do |t|
      t.belongs_to :marking, null: false
      t.belongs_to :pest, null: false

      t.timestamps
    end
  end
end
