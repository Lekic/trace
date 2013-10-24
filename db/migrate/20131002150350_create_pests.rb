class CreatePests < ActiveRecord::Migration
  def change
    create_table :pests do |t|
      #t.references :source, index: true
      t.string :name
      t.references :pest_type, index: true
      t.string :characteristics
      #t.references :marking, index: true
      t.references :colour, index: true
      t.integer :size

      t.timestamps
    end
  end
end
