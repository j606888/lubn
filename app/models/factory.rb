class Factory < ApplicationRecord
  has_many :devices, primary_key: :code, foreign_key: :factory_code
  paginates_per 10

  def info
    self.as_json(only: [:code, :name, :location, :country, :zipcode, :city, :street])
  end
end
