# flight_booking

This is a web application for booking online flight tickets. It consists of a React frontend for the user interface and a Ruby on Rails backend to handle API requests and database operations.

## Features

Search for flights based on source city, destination city, travel date, and optional return date.
View flight search results including flight number, airline name, departure and arrival times, duration, number of stops, and price.

## Technologies Used

Frontend: ReactJS
Backend: Ruby on Rails
Database: JSON store (for demonstration purposes)
Testing: Unit tests in Ruby on Rails

## Setup Instructions

### Prerequisites

Ruby (version 2.5.0 or above)
Rails (version 5 or above)
Node.js
npm (Node Package Manager)

### Installation

1. Clone the repository:

   ```bash
   git clone <repository-url>
   cd flight-booking-app
Creating a README.md file for your project is essential for providing information about your project, including how to set it up, dependencies, usage instructions, and any other relevant details. Below is an example of what your README.md file might look like for the flight booking project:
markdown
# Flight Booking Application

This is a web application for booking online flight tickets. It consists of a React frontend for the user interface and a Ruby on Rails backend to handle API requests and database operations.

## Features

- Search for flights based on source city, destination city, travel date, and optional return date.
- View flight search results including flight number, airline name, departure and arrival times, duration, number of stops, and price.

## Technologies Used

- Frontend: ReactJS
- Backend: Ruby on Rails
- Database: JSON store (for demonstration purposes)
- Testing: Unit tests in Ruby on Rails

## Setup Instructions

### Prerequisites

- Ruby (version 2.5.0 or above)
- Rails (version 5 or above)
- Node.js
- npm (Node Package Manager)

### Installation

1. Clone the repository:

   bash
   git clone <repository-url>
   cd flight-booking-app
   
2. Backend setup:

   bash
   cd backend
   bundle install
   rails db:migrate
   
3. Frontend setup:

   bash
   cd ../frontend
   npm install
   
## Usage

1. Start the Rails server:

   bash
   cd backend
   rails server
   
2. Start the React development server:

   bash
   cd ../frontend
   npm start
   
3. Open your web browser and navigate to http://localhost:3000 to access the application.

## Testing

- Backend: Run unit tests in the `backend` directory using the following command:

 bash
  cd backend
  rails test
