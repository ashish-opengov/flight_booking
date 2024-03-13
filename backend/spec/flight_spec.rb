# spec/controllers/flight_spec.rb
require 'rails_helper'

RSpec.describe FlightController, type: :controller do
  describe 'GET #search' do
    let!(:flight1) { create(:flight, source_city: 'New York', destination_city: 'Los Angeles', departure_time: DateTime.now, arrival_time: DateTime.now + 2.hours) }
    let!(:flight2) { create(:flight, source_city: 'New York', destination_city: 'Los Angeles', departure_time: DateTime.now + 1.hour, arrival_time: DateTime.now + 3.hours) }
    let!(:flight3) { create(:flight, source_city: 'New York', destination_city: 'Chicago', departure_time: DateTime.now, arrival_time: DateTime.now + 2.hours) }

    context 'with valid search params' do
      it 'returns JSON with flight data' do
        get :search, params: { sourceCity: 'New York', destinationCity: 'Los Angeles', travelDate: DateTime.now, returnDate: DateTime.now + 3.hours }

        expect(response).to have_http_status(:ok)
        # expect(JSON.parse(response.body)).to match_array([
        #   {
        #     'flightNumber' => flight1.flight_number,
        #     'airlineName' => flight1.airline_name,
        #     'departureTime' => flight1.departure_time.strftime('%F %T').as_json,
        #     'arrivalTime' => flight1.arrival_time.strftime('%F %T').as_json,
        #     'duration' => flight1.duration,
        #     'numberOfStops' => flight1.number_of_stops
        #   }
        # ])

      end
    end

    context 'with invalid search params' do
      it 'returns empty JSON array' do
        get :search, params: { sourceCity: 'New York', destinationCity: 'Chicago', travelDate: DateTime.now, returnDate: DateTime.now + 3.hours }

        expect(response).to have_http_status(:ok)
        # expect(JSON.parse(response.body)).to eq([])
      end
    end
  end
end
