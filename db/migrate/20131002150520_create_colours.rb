class CreateColours < ActiveRecord::Migration
  def change
    create_table :colours do |t|
      t.string :colour
      #t.references :pest, index: true

      t.timestamps
    end
  end
end
