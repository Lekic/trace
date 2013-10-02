class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :country_code
      t.integer :area_code
      t.integer :phone
      t.references :phone_type, index: true
      t.string :comment

      t.timestamps
    end
  end
end
