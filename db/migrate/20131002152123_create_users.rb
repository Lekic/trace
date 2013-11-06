class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :employee_id, unique: true
      t.string :name
      t.date :date_of_birth
      t.date :date_joined, default: Date.today
      t.references :person_type, index: true
      t.references :park, index: true
      t.string :contact_number, phone_number: true
      t.integer :street_number
      t.string :street_name
      t.string :suburb
      t.string :state
      t.integer :postcode

      t.timestamps
    end
  end
end
