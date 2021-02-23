class SensorData < ApplicationRecord
  belongs_to :device, primary_key: :code, foreign_key: :device_code
end
