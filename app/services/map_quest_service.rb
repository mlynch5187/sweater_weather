class MapQuestService < BaseService
  def longitude_latitude(location_params)
    response = conn('http://www.mapquestapi.com/').get('geocoding/v1/address') do |f|
      f.params[:key] = ENV['MAPQUEST_KEY']
      f.params[:location] = location_params
    end
    json(response)[:results][0][:locations][0][:latLng]
  end

  def trip_duration(start_lat, start_lon, local_restaurant)
    end_lat = local_restaurant[:location][:latitude]
    end_lon = local_restaurant[:location][:longitude]
    finish = end_lat + "," + end_lon
    start = start_lat.to_s + "," + start_lon.to_s
    response = conn('http://www.mapquestapi.com/directions/v2/').get('route') do |f|
      f.params[:key] = ENV['MAPQUEST_KEY']
      f.params[:from] = start
      f.params[:to] = finish
    end
    json(response)[:route][:formattedTime]
  end
end
