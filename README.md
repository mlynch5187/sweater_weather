# Sweater Weather

Sweater Weather is a Rails API that retrieves current and future weather conditions for a location, along with directions for planned trips. The goal of this application is to render API results as json for a frontend app to consume.

APIs Utilized: OpenWeather API, MapQuest API, Pexels API

### Setup
Versions Used: Ruby 2.5.3, Rails 5.1.7
APIs Utilized: OpenWeather API, MapQuest API, Pexels API

- git clone git@github.com:mlynch5187/sweater-weather.git
- cd sweater_weather
- bundle install
- rails db:{create,migrate}
- bundle exec figaro install
- Register and add your API keys to application.yml
- Use rails s to browse rendered json

## API Documentation

### Get a location's weather forecast

GET /api/v1/forecast

Example: GET /api/v1/forecast?location=denver,co
Required: location as [city,state]

### Get A Location's Picture

GET /api/v1/backgrounds 
Example: GET /api/v1/backgrounds?location=denver,co

Required: location as [city,state]

### New User Registration

POST /api/v1/users
Example: POST /api/v1/users?email=user@example.com&password=password123&password_confirmation=password123

Required: email, password, password_confirmation

### Registered User Login

POST /api/v1/sessions
Example: POST /api/v1/sessions?email=user@example.com&password=password123

Required: email, password

### Get Road Trip Information (Coming Soon)
POST /api/v1/road_trip
Example: POST /api/v1/road_trip?origin=denver,co&destination=pueblo,co&api_key=abc123

Required: origin destination api_key as [city, city, api_key]

Please contact me with any feedback or questions at mlynch5187@gmail.com
