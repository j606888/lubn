class Device < ApplicationRecord
  belongs_to :factory, primary_key: :code, foreign_key: :factory_code
  has_many :sensor_datas, primary_key: :code, foreign_key: :device_code

  def info
    as_json(only: [:code, :category])
  end
end
