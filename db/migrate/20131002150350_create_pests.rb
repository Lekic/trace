class CreatePests < ActiveRecord::Migration
  def change
    create_table :pests do |t|
      t.references :source, index: true
      t.integer :tracker_id, unique: true
      t.string :name, unique: true
      t.references :pest_type, index: true
      t.string :characteristics
      t.references :colour, index: true
      t.integer :size

      t.timestamps
    end
  end
end
