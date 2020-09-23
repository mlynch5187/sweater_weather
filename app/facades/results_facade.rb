class ResultsFacade
  def initialize(start_lat, start_lon)
    @start_lat = start_lat
    @start_lon = start_lon
  end

  def weather_forecast
    ForecastService.new.forecast(@start_lat, @start_lon)
  end
end
