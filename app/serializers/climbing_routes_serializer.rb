class ClimbingRoutesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :current_weather, :name, :type, :location, :distance
end
