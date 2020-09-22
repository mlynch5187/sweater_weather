class Api::V1::ForecastController < ApplicationController
  def index
    coordinates = MapQuestService.new.longitude_latitude(params[:location])
    weather_forecast = ForecastService.new.forecast(coordinates[:lat], coordinates[:lng])    
    render json: ForecastSerializer.new(Forecast.new(weather_forecast))
  end
end
