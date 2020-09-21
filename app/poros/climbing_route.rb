class ClimbingRoute
  attr_reader :id, :lat, :lon, :current_weather, :name, :type, :location, :distance

  def initialize(route_info, start_location)
    @id = nil
    @name = route_info[:name]
    @lat = route_info[:latitude]
    @lon = route_info[:longitude]
    @type = route_info[:type]
    @location = route_info[:location]
    @current_weather = current_weather
    @distance = distance
    @start_location = start_location
  end

  def current_weather
    conditions = ForecastService.new.forecast(lat, lon)
    conditions[:current][:weather][0][:description]
  end

  def distance
    start_location = @start_location
    end_lat = @lat
    end_lon = @lon
    end_latlon = end_lat,end_lon
    miles = MapQuestService.new.distance(start_location, end_latlon)
  end
end
