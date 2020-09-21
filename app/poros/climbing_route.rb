class ClimbingRoute
  attr_reader :id, :name, :type, :location

  def initialize(route_info)
    @id = nil
    @lat = route_info[:latitude]
    @lon = route_info[:longitude]
    @name = route_info[:name]
    @type = route_info[:type]
    @location = route_info[:location]
    require "pry"; binding.pry
    # @distance
  end

  def current_weather
    conditions = ForecastService.new.forecast(@lat, @lon)
    conditions[:current][:weather][0][:description]
  end
end
