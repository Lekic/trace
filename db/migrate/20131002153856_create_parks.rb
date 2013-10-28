class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
   	  t.integer :id, unique: true
      t.string :name
      t.references :area, index: true

      t.timestamps
    end
  end
end
