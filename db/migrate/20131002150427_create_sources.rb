class CreateSources < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :type
      #t.references :pest, index: true

      t.timestamps
    end
  end
end
