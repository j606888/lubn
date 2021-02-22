Factory.delete_all
Device.delete_all
SensorData.delete_all
(1..9).each do |i|
  f = Factory.create(code: "A00#{i}", name: "Factroy#{i}", location: '123.55,456.33', country: "Taiwan",  zipcode: "700", city: "Tainan", street: "Cool Street. 99")
  (10..19).each do |j|
    d = Device.create(code: "Z00#{i*j}", factory_code: f.code, category: 'METER')
    (1..5).each do |y|
      s = SensorData.create(device_code: d.code, sensed_at: Time.now, sense_value: 0.9*i*j*y)
    end
  end
end

print("done")