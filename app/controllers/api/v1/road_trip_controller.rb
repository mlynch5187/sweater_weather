class Api::V1::RoadTripController < ApplicationController
  def create
    trip_params = JSON.parse(request.body.read)
    if api_verification(trip_params)
      render json: RoadTripSerializer.new(road_trip)
    else
      render json: ErrorSerializer.failure
    end
  end

  private

  def road_trip
    route = DirectionsService.call(trip_params)
    weather = ArrivalWeatherService.call(route)
    Roadtrip.new(route, weather)
  end

  def api_verification(trip_params)
    User.find_by(api_key: trip_params[:api_key])
  end
end
