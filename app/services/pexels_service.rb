class PexelsService
  def self.images
    response = conn.get('/api') do |f|
      f.params[:key] = ENV['PIXABAY_KEY']
      f.params[:per_page] = 3
      f.params[:image_type] = 'photo'
    end
    JSON.parse(response.body, serialize_names: true)
  end

  def self.conn
    Faraday.new('https://pixabay.com')
  end
end
