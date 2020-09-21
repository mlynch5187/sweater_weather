class ClimbingRouteService < BaseService
  def local_routes(lat, lon)
    response = conn('https://www.mountainproject.com').get('/data/get-routes-for-lat-lon') do |f|
      f.params[:key] = ENV['TRAILS_KEY']
      f.params[:lat] = lat
      f.params[:lon] = lon
      f.params[:maxDistance] = 15
    end
    json(response)
  end
end
