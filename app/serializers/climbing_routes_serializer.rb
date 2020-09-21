class ClimbingRoutesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :weather, :name, :type, :location, :travel_time
end
