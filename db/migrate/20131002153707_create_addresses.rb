class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :number
      t.string :street
      t.string :suburb
      t.string :state
      t.integer :postcode
      t.references :addressType, index: true

      t.timestamps
    end
  end
end
