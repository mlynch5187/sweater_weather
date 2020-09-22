class Api::V1::FoodieController < ApplicationController
  def index
    facade = ResultsFacade.new(params[:end], coordinates[:lat], coordinates[:lng])
    forecast = facade.weather_forecast
    restaurant = facade.local_restaurant
    time = facade.travel_time
    render json: FoodieSerializer.new(Foodie.new(forecast, time, restaurant))
  end

  private

  def coordinates
    MapQuestService.new.longitude_latitude(params[:end])
  end
end
