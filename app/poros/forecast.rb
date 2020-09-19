class Forecast
  attr_reader :id, :current, :hourly, :daily

  def initialize(weather_forecast)
    @id = 1
    @current = weather_forecast[:current]
    @hourly = weather_forecast[:hourly]
    @daily = weather_forecast[:daily]
  end
end
