class DistanceService < BaseService
  def get_distance(start_lat, start_lon, end_lat, end_lon)
  response = conn('http://www.mapquestapi.com/directions/v2').get('/route') do |f|
    f.params[:key] = ENV['MAPQUEST_KEY']
    f.params[:from] = start_lat + start_lon
    f.params[:to] = end_lat + end_lon
    end
    json(response)
  end
end
