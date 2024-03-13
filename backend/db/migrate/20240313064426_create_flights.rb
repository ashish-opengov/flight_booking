class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :airline_name
      t.string :flight_number
      t.string :source_city
      t.string :destination_city
      t.datetime :departure_time
      t.datetime :arrival_time
      t.integer :duration
      t.integer :number_of_stops
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
