class CreateFactories < ActiveRecord::Migration[5.2]
  def change
    create_table :factories do |t|
      t.string :code, unique: true, null: false
      t.string :name, null: false
      t.string :location
      t.string :country
      t.string :zipcode
      t.string :city
      t.string :street

      t.timestamps
    end
  end
end
