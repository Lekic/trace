class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :number
      t.string :street
      t.string :suburb
      t.string :state
      t.integer :postcode
      t.references :address_type, index: true

      t.timestamps
    end
  end
end
