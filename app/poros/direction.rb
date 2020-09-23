class Direction
  attr_reader :start_location,
              :start_coordinates,
              :end_location,
              :end_coordinates,
              :travel_time

  def initialize(route_attributes)
    @start_location = route_start_location(route_attributes)
    @start_coordinates = route_start_coords(route_attributes)
    @end_location = route_end_location(route_attributes)
    @end_coordinates = route_end_coords(route_attributes)
    @travel_time = route_travel_time(route_attributes)
  end

  def route_start_location(route_attributes)
    route_attributes[:route][:locations][0][:adminArea5]
  end

  def route_end_location(route_attributes)
    route_attributes[:route][:locations][1][:adminArea5]
  end

  def route_start_coords(route_attributes)
    route_attributes[:route][:boundingBox][:lr]
  end

  def route_end_coords(route_attributes)
    route_attributes[:route][:boundingBox][:ul]
  end

  def route_travel_time(route_attributes)
    route_attributes[:route][:formattedTime]
  end
end
