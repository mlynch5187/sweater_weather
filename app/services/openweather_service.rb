class OpenWeatherService
  def self.forecast(coordinates)
    Faraday.get('data/2.5/onecall') do |f|
      f.params[:lat] = coordinates[:lat]
      f.params[:lon] = coordinates[:lon]
      f.params[:exclude] = 'minutely'
      f.params[:appid] = ENV['OPENWEATHER_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("https://api.openweathermap.org/")
  end
end
