class BaseService
  def conn(uri)
    Faraday.new(uri)
  end

  def pexel_conn(uri)
    Faraday.new(uri) do |f|
      f.headers['Authorization'] = ENV['PEXELS_KEY']
    end
  end

  def zomato_conn(uri)
    Faraday.new(uri) do |f|
      f.headers['user-key'] = '0b3582e338e764a9df0c0f8111a59338'
    end
  end

  def json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
