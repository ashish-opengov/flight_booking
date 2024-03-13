// App.js
import React, { useState } from 'react';
import FlightSearchForm from './components/FlightSearchForm';
import FlightSearchResult from './components/FlightSearchResult';

function App() {
  const [searchResult, setSearchResult] = useState(null);

  const handleSearchResult = (result) => {
    setSearchResult(result);
  };

  return (
    <div className="App">
      <h1>Online Flight Booking</h1>
      <FlightSearchForm onSearchResult={handleSearchResult} />
      {searchResult && <FlightSearchResult searchResult={searchResult} />}
    </div>
  );
}

export default App;
