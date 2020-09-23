class Api::V1::RoadTripController < ApplicationController
  def create
    render json: RoadTripSerializer.new(params)
    render json: ErrorSerializer.failure
  end

  private

  def road_trip
    route = DirectionsService.find_route(params)
    # weather = ArrivalWeatherService.call(route)
    Roadtrip.new(route, weather)
  end
end
