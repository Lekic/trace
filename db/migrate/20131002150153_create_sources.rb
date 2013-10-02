class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :type
      t.references :pest, index: true

      t.timestamps
    end
  end
end
