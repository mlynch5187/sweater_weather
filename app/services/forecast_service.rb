class ForecastService < BaseService
  def forecast(lat, lon)
    response = conn('https://api.openweathermap.org/data/2.5/').get('onecall') do |f|
      f.params[:lat] = lat
      f.params[:lon] = lon
      f.params[:exclude] = 'minutely'
      f.params[:appid] = ENV['OPENWEATHER_KEY']
    end
    json(response)
  end
end
