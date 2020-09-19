class OpenWeatherService
  def self.forecast(coordinates)
    response = conn.get('data/2.5/onecall') do |f|
      f.params[:lat] = coordinates[:results][0][:locations][0][:latLng][:lat]
      f.params[:lon] = coordinates[:results][0][:locations][0][:latLng][:lng]
      f.params[:exclude] = 'minutely'
      f.params[:appid] = ENV['OPENWEATHER_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("https://api.openweathermap.org/")
  end
end
