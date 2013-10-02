class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth
      t.string :username
      t.string :password
      t.datetime :date_joined
      t.references :phone, index: true
      t.references :address, index: true
      t.references :person_type, index: true
      t.references :park, index: true

      t.timestamps
    end
  end
end
