class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :code, unique: true, null: false
      t.string :factory_code, null: false
      t.string :category, null: false

      t.timestamps
    end
  end
end
