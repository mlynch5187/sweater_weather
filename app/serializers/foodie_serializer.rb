class FoodieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :travel_time, :end_location, :restaurant_name, :restaurant_location, :forecast
end
