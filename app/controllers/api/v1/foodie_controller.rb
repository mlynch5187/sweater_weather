class Api::V1::FoodieController < ApplicationController
  def index
    # coordinates = MapQuestService.new.longitude_latitude(params[:location])
    # weather_forecast = ForecastService.new.forecast(coordinates[:lat], coordinates[:lon])
    local_restaurant = ZomatoService.new(params[:end]).restaurant

  end
end
