class Api::V1::ForecastController < ApplicationController
  def index
    coordinates = MapQuestService.longitude_latitude(params[:location])
    weather_forecast = OpenWeatherService.forecast(coordinates)
  end
end
