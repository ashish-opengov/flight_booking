// FlightSearchResult.js
import React from 'react';

const FlightSearchResult = ({ searchResult }) => {
  return (
    <div>
      <h2>Search Results</h2>
      <p>Total Results: {searchResult.length}</p>
      {searchResult.map((flight, index) => (
        <div key={index}>
          <p>Flight Number: {flight.flightNumber}</p>
          <p>Airline Name: {flight.airlineName}</p>
          <p>Departure Time: {flight.departureTime}</p>
          <p>Arrival Time: {flight.arrivalTime}</p>
          <p>Duration: {flight.duration}</p>
          <p>No. Of Stops: {flight.numberOfStops}</p>
          <p>Price: {flight.price}</p>
          <hr />
        </div>
      ))}
    </div>
  );
};

export default FlightSearchResult;
