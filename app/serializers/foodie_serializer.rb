class FoodieSerializer
  include FastJsonapi::ObjectSerializer
attributes  :id,
            :forecast,
            :current_temp,
            :travel_time_minutes,
            :travel_time_hours,
            :restaurant_name,
            :restaurant_location
end
