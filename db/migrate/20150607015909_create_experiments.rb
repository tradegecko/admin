class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :key
      t.integer :instrument_id

      t.timestamps null: false
    end
  end
end
