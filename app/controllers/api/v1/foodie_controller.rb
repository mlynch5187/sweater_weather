class Api::V1::FoodieController < ApplicationController
  def index
    coordinates = MapQuestService.new.longitude_latitude(params[:end])
    weather_forecast = ForecastService.new.forecast(coordinates[:lat], coordinates[:lng])
    local_restaurant = ZomatoService.new(params[:end]).restaurant
    travel_time = MapQuestService.new.trip_duration(coordinates[:lat], coordinates[:lng], local_restaurant)
    render json: FoodieSerializer.new(Foodie.new(weather_forecast, travel_time, local_restaurant))
  end
end
