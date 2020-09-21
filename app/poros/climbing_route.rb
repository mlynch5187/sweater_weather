class ClimbingRoute
  attr_reader :id, :current_weather

  def initialize(weather_forecast, routes)
    @id = nil
    @current_weather = weather_forecast[:current][:weather][0][:description]
    # @name =
  end
end
