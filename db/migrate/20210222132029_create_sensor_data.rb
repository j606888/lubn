class CreateSensorData < ActiveRecord::Migration[5.2]
  def change
    create_table :sensor_data do |t|
      t.string :device_code, null: false
      t.datetime :sensed_at, null: false
      t.float :sense_value, null: false

      t.timestamps
    end
  end
end
