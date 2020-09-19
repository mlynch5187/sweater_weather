class MapQuestService

  def self.longitude_latitude(location)
    conn.get('address') do |f|
      f.params[:key] = ENV['MAPQUEST_KEY']
      f.params[:location] = location
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('http://www.mapquestapi.com/geocoding/v1/')
  end
end
