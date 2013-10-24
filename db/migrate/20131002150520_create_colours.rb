class CreateColours < ActiveRecord::Migration
  def change
    create_table :colours do |t|
      t.string :colour, unique: true
      #t.references :pest, index: true

      t.timestamps
    end
  end
end
