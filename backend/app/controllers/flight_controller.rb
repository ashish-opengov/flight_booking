class FlightController < ApplicationController
  def search
	  departure_time = DateTime.parse(search_params[:departure_time])
	  arrival_time = DateTime.parse(search_params[:arrival_time])

	  search_results = Flight.where(
	    source_city: search_params[:source_city],
	    destination_city: search_params[:destination_city],
	    departure_time: (departure_time..arrival_time)
	  ).select(:flight_number, :airline_name, :departure_time, :arrival_time, :duration, :number_of_stops, :price)

	  flight_data = search_results.map do |result|
	    {
	      flightNumber: result.flight_number,
	      airlineName: result.airline_name,
	      departureTime: result.departure_time.strftime('%F %T'),
	      arrivalTime: result.arrival_time.strftime('%F %T'),
	      duration: result.duration,
	      numberOfStops: result.number_of_stops,
	      price: result.price
	    }
	  end

	  render json: flight_data
  end


  private
  def search_params
  	{
	  	source_city: params[:sourceCity],
	    destination_city: params[:destinationCity],
	    departure_time: params[:travelDate],
	    arrival_time: params[:returnDate]
	}
  end
end
