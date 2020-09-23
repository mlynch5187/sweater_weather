class ArrivalWeatherService
  def call(directions)
    response = conn('https://maps.googleapis.com/').get('data/2.5/onecall') do |f|
      f.params[:appid] = ENV['FORECAST_KEY']
      f.params[:lat] = directions.end_coords[:lat]
      f.params[:lon] = directions.end_coords[:lng]
      f.params[:exclude] = 'daily,minutely,current'
    end
    json(response)
    ArrivalWeather.new(response, directions.route_time_unix)
  end
end
