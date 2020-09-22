class ResultsFacade

  def initialize(destination, start_lat, start_lon)
    @destination = destination
    @start_lat = start_lat
    @start_lon = start_lon
  end

  def foodie_service(city)
    ZomatoService.new(city)
  end

  def coordinates
    MapQuestService.new.longitude_latitude(@destination)
  end

  def weather_forecast
    ForecastService.new.forecast(@start_lat, @start_lon)
  end

  def local_restaurant
    ZomatoService.new(@destination).restaurant
  end

  def travel_time
    MapQuestService.new.trip_duration(@start_lat, @start_lon, local_restaurant)
  end
end
