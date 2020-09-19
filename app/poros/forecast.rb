class Forecast
  attr_reader :current, :hourly, :daily

  def initialize(weather_forecast)
    @current = weather_forecast[:current]
    @hourly = weather_forecast[:hourly]
    @daily = weather_forecast[:daily]
  end
end
