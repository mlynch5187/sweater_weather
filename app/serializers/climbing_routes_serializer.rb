class ClimbingRoutesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :lat, :lon, :current_weather, :name, :type, :location, :distance
end
