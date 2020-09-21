class MapQuestService < BaseService
  def longitude_latitude(location_params)
    response = conn('http://www.mapquestapi.com/').get('geocoding/v1/address') do |f|
      f.params[:key] = ENV['MAPQUEST_KEY']
      f.params[:location] = location_params
    end
    json(response)[:results][0][:locations][0][:latLng]
  end

  def distance(start_location, end_latlon)
    require "pry"; binding.pry
    response = conn('http://www.mapquestapi.com/directions/v2').get('/route') do |f|
      f.params[:key] = ENV['MAPQUEST_KEY']
      f.params[:from] = start_location
      f.params[:to] = end_latlon
    end
    json(response)
  end
end
