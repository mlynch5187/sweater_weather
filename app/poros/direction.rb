class Direction
  attr_reader :start_location,
              :start_coordinates,
              :end_location,
              :end_coordinates,
              :duration,
              :unix_time

  def initialize(route_attributes)
    @start_location = route_start_location(route_attributes)
    @start_coordinates = route_start_coords(route_attributes)
    @end_location = route_end_location(route_attributes)
    @end_coordinates = route_end_coords(route_attributes)
    @duration = route_travel_time(route_attributes)
    @unix_time = route_time_unix(route_attributes)
  end

  def route_start_location(route_attributes)
    route_attributes[:routes][0][:legs][0][:start_address]
  end

  def route_end_location(route_attributes)
    route_attributes[:routes][0][:legs][0][:end_address]
  end

  def route_start_coords(route_attributes)
    route_attributes[:routes][0][:legs][0][:start_location]
  end

  def route_end_coords(route_attributes)
    route_attributes[:routes][0][:legs][0][:end_location]
  end

  def route_time_unix(route_attributes)
    route_attributes[:routes][0][:legs][0][:duration][:value]
  end

  def route_travel_time(route_attributes)
    route_attributes[:routes][0][:legs][0][:duration][:text]
  end
end
