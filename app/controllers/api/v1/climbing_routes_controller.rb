class Api::V1::ClimbingRoutesController < ApplicationController
  def index
    coordinates = MapQuestService.new.longitude_latitude(params[:location])
    weather_forecast = ForecastService.new.forecast(coordinates[:lat], coordinates[:lng])
    routes = ClimbingRouteService.new.local_routes(coordinates[:lat], coordinates[:lng])
    render json: ClimbingRoutesSerializer.new(ClimbingRoute.new(weather_forecast))
  end
end
