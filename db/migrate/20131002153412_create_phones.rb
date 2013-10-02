class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :countryCode
      t.integer :areaCode
      t.integer :phone
      t.references :phoneType, index: true
      t.string :comment

      t.timestamps
    end
  end
end
