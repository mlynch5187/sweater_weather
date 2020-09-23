class ArrivalWeatherService
  def call(route)
    response = conn('http://www.mapquestapi.com/').get('data/2.5/onecall') do |f|
      f.params[:appid] = ENV['FORECAST_KEY']
      f.params[:lat] = route.end_coords[:lat]
      f.params[:lon] = route.end_coords[:lng]
      f.params[:exclude] = 'daily,minutely,current'
    end
    json(response)
    ArrivalWeather.new(response, directions.route_time_unix)
  end
end
