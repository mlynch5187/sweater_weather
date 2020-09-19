class BaseService
  def conn(uri)
    Faraday.new(uri)
  end

  def pexel_conn(uri)
    Faraday.new(uri) do |f|
      f.headers['Authorization'] = ENV['PEXELS_KEY']
    end
  end

  def json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
