class CreateTimeTrackings < ActiveRecord::Migration[5.2]
  def change
    create_table :time_trackings do |t|
      t.string :comment
      t.string :owner
      t.references :geofencing, foreign_key: true

      t.timestamps
    end
  end
end
