class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.text :train_name 
      t.text :station_name
      t.text :walk_minutes

      t.timestamps
    end
  end
end
