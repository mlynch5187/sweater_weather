class ClimbingRoute
  attr_reader :id, :lat, :lon, :current_weather, :name, :type, :location

  def initialize(route_info)
    @id = nil
    @latlong = route_info[:latitude] + route_info[:longitude]
    @name = route_info[:name]
    @type = route_info[:type]
    @location = route_info[:location]
    @current_weather = current_weather
  end

  def current_weather
    conditions = ForecastService.new.forecast(@lat, @lon)
    conditions[:current][:weather][0][:description]
  end

  def distance(@latlong)
    miles = Mapquest.new.distance(@latlong)
  end
end
