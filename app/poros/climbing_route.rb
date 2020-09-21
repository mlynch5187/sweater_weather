class ClimbingRoute
  attr_reader :id, :lat, :lon, :current_weather, :name, :type, :location

  def initialize(route_info)
    @id = nil
    @lat = route_info[:latitude]
    @lon = route_info[:longitude]
    @name = route_info[:name]
    @type = route_info[:type]
    @location = route_info[:location]
    @current_weather = current_weather
    # @distance
  end

  def current_weather
    conditions = ForecastService.new.forecast(@lat, @lon)
    conditions[:current][:weather][0][:description]
  end

  def distance
    miles = DistanceService.new.get_distance(@lat, @lon)
  end
end

# {:lat=>36.147506, :lng=>-82.413996}
