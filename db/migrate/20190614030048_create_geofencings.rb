class CreateGeofencings < ActiveRecord::Migration[5.2]
  def change
    create_table :geofencings do |t|
      t.string :location
      t.float :latitude
      t.float :longitude
      t.integer :radius

      t.timestamps
    end
  end
end
