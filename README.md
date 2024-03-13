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
   git clone <git@github.com:ashish-opengov/flight_booking.git>
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

## Screenshots

![Screenshot from 2024-03-13 15-26-54](https://github.com/ashish-opengov/flight_booking/assets/61679171/58415265-27b4-4b8e-9a00-653103ebec55)
![Screenshot from 2024-03-13 15-27-14](https://github.com/ashish-opengov/flight_booking/assets/61679171/16ad2382-683e-4c73-a03c-e4881b2eac65)
![Screenshot from 2024-03-13 15-23-35](https://github.com/ashish-opengov/flight_booking/assets/61679171/b3b1eafd-72f1-4422-abac-0b5748c05b6b)
![Screenshot from 2024-03-13 16-00-02](https://github.com/ashish-opengov/flight_booking/assets/61679171/a242a3e4-bc3a-441d-95e2-22d293da344a)
![Screenshot from 2024-03-13 15-23-55](https://github.com/ashish-opengov/flight_booking/assets/61679171/30128cfd-660b-493d-a5d3-24d341b66ae3)

