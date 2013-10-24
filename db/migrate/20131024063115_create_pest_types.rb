class CreatePestTypes < ActiveRecord::Migration
  def change
    create_table :pest_types do |t|
      t.string :type
      t.references :pest, index: true

      t.timestamps
    end
  end
end
