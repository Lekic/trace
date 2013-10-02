class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :dateOfBirth
      t.string :username
      t.string :password
      t.datetime :dateJoined
      t.references :phone, index: true
      t.references :address, index: true
      t.references :personType, index: true
      t.references :park, index: true

      t.timestamps
    end
  end
end
