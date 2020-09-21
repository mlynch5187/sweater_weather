class ClimbingRoute
  attr_reader :id

  def initialize(route_info)
    @id = nil
    # @current_weather = weather_forecast[:current][:weather][0][:description]
    @name = route_info[:name]
    @type = route_info[:type]
    @location = route_info[:location]
    # @distance
  end
  #
  # def current_weather(weather_forecast)
  #   # require "pry"; binding.pry
  # end
end
