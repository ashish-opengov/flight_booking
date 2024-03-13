10.times do
	departure_time = Faker::Time.between_dates(from: Date.today, to: Date.today + 1.month, period: :all)
	arrival_time = Faker::Time.between_dates(from: departure_time, to:Date.today + 1.month, period: :all)
	duration = ((arrival_time - departure_time)/ (24 * 60 * 60)).to_i
	price = duration * 500
	flight_number = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join.upcase
	Flight.create({airline_name: 'Air India',flight_number:flight_number, source_city: Faker::Address.city, destination_city: Faker::Address.city, departure_time: departure_time, arrival_time: arrival_time, duration: duration, number_of_stops: (1..5).to_a.sample, price:  price})
end