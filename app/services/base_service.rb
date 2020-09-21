class BaseService
  def conn(uri)
    Faraday.new(uri)
  end

  def json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
