class Api::V1::RoadTripController < ApplicationController
  def create
    road_trip = JSON.parse(request.body)
    render json: RoadTripSerializer.new(road_trip)
    render json: ErrorSerializer.failure
  end

  private

  def road_trip
    route = DirectionsService.call(trip_params)
    weather = ArrivalWeatherService.call(route)
    Roadtrip.new(route, weather)
  end
end
