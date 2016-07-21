class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.decimal :longitude, precision: 6, scale: 7
      t.decimal :latitude, precision: 6, scale: 7
      t.string :ip
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
