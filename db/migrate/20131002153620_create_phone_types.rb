class CreatePhoneTypes < ActiveRecord::Migration
  def change
    create_table :phone_types do |t|
      t.string :name, unique: true

      t.timestamps
    end
  end
end
