class Device < ApplicationRecord
  belongs_to :factory, primary_key: :code, foreign_key: :factory_code

  def info
    as_json(only: [:code, :category])
  end
end
