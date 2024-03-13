import React, { useState } from 'react';

const FlightSearchForm = ({ onSearchResult }) => {
  const [sourceCity, setSourceCity] = useState('');
  const [destinationCity, setDestinationCity] = useState('');
  const [travelDate, setTravelDate] = useState('');
  const [returnDate, setReturnDate] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();
    // Perform validation if needed
    // Make API call to fetch search results
    const searchParams = {
      sourceCity,
      destinationCity,
      travelDate,
      returnDate,
    };
    try {
      const response = await fetch('http://localhost:3000/flights/search', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(searchParams),
      });
      if (!response.ok) {
        throw new Error('Failed to fetch search results');
      }
      const data = await response.json();
      onSearchResult(data);
    } catch (error) {
      console.error('Error fetching search results:', error);
    }
  };

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          placeholder="Source City"
          value={sourceCity}
          onChange={(e) => setSourceCity(e.target.value)}
          required
        />
        <input
          type="text"
          placeholder="Destination City"
          value={destinationCity}
          onChange={(e) => setDestinationCity(e.target.value)}
          required
        />
        <input
          type="date"
          placeholder="Travel Date"
          value={travelDate}
          onChange={(e) => setTravelDate(e.target.value)}
          required
        />
        <input
          type="date"
          placeholder="Return Date"
          value={returnDate}
          onChange={(e) => setReturnDate(e.target.value)}
        />
        <button type="submit">Search</button>
      </form>
    </div>
  );
};

export default FlightSearchForm;
