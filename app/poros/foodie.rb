class Foodie
  attr_reader :id,
              :forecast,
              :current_temp,
              :travel_time_minutes,
              :travel_time_hours,
              :restaurant_name,
              :restaurant_location

  def initialize(weather_forecast, travel_time, restaurant)
    @forecast = weather_forecast[:current][:weather].first[:description]
    @current_temp = weather_forecast[:current][:temp]
    @travel_time_minutes = travel_time[6..-1]
    @travel_time_hours = travel_time[0..1]
    @restaurant_name = restaurant[:name]
    @restaurant_location = restaurant[:location]
  end
end

#with more time, I would combine travel_time_minutes and travel_time_hours
# something like this: @travel_time_hours = travel_time[0..1] + "hours and" travel_time[6..-1] + "minutes"

#here is my json response:
#{"data":{"id":null,"type":"foodie","attributes":{"id":null,"forecast":"clear sky","current_temp":299.98,"travel_time_minutes":"41","travel_time_hours":"00","restaurant_name":"Bingo Burger","restaurant_location":{"address":"101 Central Plaza 81003","locality":"Pueblo","city":"Pueblo","city_id":535,"latitude":"38.2681694000","longitude":"-104.6086884000","zipcode":"81003","country_id":216,"locality_verbose":"Pueblo, Pueblo"}}}}
