class Api::V1::ForecastController < ApplicationController
  def index
    facade = ResultsFacade.new(coordinates[:lat], coordinates[:lng])
    forecast = facade.weather_forecast
    render json: ForecastSerializer.new(Forecast.new(forecast))
  end

  private

  def coordinates
    MapQuestService.new.longitude_latitude(params[:location])
  end
end
