class Api::V1::FoodieController < ApplicationController
  def index
    coordinates = MapQuestService.new.longitude_latitude(params[:end])
    weather_forecast = ForecastService.new.forecast(coordinates[:lat], coordinates[:lng])
    local_restaurant = ZomatoService.new(params[:end]).restaurant
    render json: FoodieSerializer.new(Foodie.new(weather_forecast, local_restaurant))
  end
end
