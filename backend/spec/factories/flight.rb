FactoryBot.define do
  factory :flight do
    sequence(:flight_number) { |n| "FL#{n}" }
    airline_name { Faker::Company.name }
    departure_time { Faker::Time.between_dates(from: Date.today, to: Date.today + 1.month, period: :all) }
    arrival_time { Faker::Time.between_dates(from: departure_time, to: Date.today + 1.month, period: :all) }
    duration { rand(1..10).hours }
    number_of_stops { rand(0..2) }
  end
end
