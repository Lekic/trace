class CreatePests < ActiveRecord::Migration
  def change
    create_table :pests do |t|
      t.references :source, index: true
      t.string :name
      t.references :tracker_type, index: true
      t.references :marking, index: true
      t.references :colour, index: true
      t.integer :size

      t.timestamps
    end
  end
end
