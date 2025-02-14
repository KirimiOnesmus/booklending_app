# Book Lending App

This app is designed to manage borrowing and returning books.


1. Prerequisites
    Make sure you have the following installed on your system:
    Ruby (Version 3.0 or higher)
    Ruby on Rails (Version 7.0 or higher)
    Bundler (for managing dependencies)
    Node.js (for JavaScript runtime)
    Yarn (for asset management)
    SQLite3 (or other database if configured)

2. Setup and Installation  
  1. Clone the Repository
      git clone https://github.com/KirimiOnesmus/booklending_app.git
      cd booklending_app
  2. Install Dependencies Run the following command to install all Ruby and JavaScript dependencies:
      bundle install
    	yarn install
  3. Setup the Database Create and migrate the database:
      rails db:create
      rails db:migrate
  4. Seed the Database (if applicable) Populate the database with initial data:
      rails db:seed

3. Running the App
   To start the app in development mode:
   rails server
   The app will be available at http://localhost:3000.
4. Running Tests
   This app uses Rails’ built-in test framework for testing. To run all tests:
   rails test
   
  
