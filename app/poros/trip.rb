class Trip
  attr_reader :id, :origin, :destination, :travel_time, :arrival_forecast

  def initialize(route, forecast)
    @id = nil
    @origin = route.starting_point
    @destination = route.ending_point
    @travel_time = route.travel_time
    @arrival_forecast = forecast.arrival_forecast
  end
end
