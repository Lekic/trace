class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :country_code, null: false
      t.integer :area_code, null: false
      t.integer :phone, null: false
      t.references :phone_type, index: true
      t.references :user, index: true
      t.string :comment

      t.timestamps
    end
  end
end
