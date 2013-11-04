class CreateColours < ActiveRecord::Migration
  def change
    create_table :colours do |t|
      t.string :name, unique: true

      t.timestamps
    end
  end
end
