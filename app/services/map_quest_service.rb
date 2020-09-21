class MapQuestService < BaseService
  def longitude_latitude(location_params)
    response = conn('http://www.mapquestapi.com/').get('geocoding/v1/address') do |f|
      f.params[:key] = ENV['MAPQUEST_KEY']
      f.params[:location] = location_params
    end
    json(response)[:results][0][:locations][0][:latLng]
  end

  def distance(latlong)
    response = conn('http://www.mapquestapi.com/directions/v2').get('/route') do |f|
      f.params[:key] = ENV['MAPQUEST_KEY']
      f.params[:from] = location_params
      f.params[:to] = latLng
    end
    require "pry"; binding.pry
    json(response)
  end
end
