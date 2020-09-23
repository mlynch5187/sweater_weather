class ArrivalWeather
  attr_reader :arrival_forecast
  def initialize(weather_forecast, hour_difference)
    @arrival_forecast = destination_forecast(weather_forecast, hour_difference)
  end

  def destination_forecast(weather_forecast, hour_difference)
    arrival_time = Time.now.to_i + hour_difference
    weather_forecast[:hourly].sort_by do |hour|
      ((hour[:dt] - arrival_time).abs).first
    end
  end
end
