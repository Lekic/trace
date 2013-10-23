class CreatePestsSources < ActiveRecord::Migration
  def change
    create_table :pests_sources do |t|
      t.references :pest, null: false
      t.references :source, null: false

      t.timestamps
    end
  end
end
