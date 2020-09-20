class PexelsService < BaseService
  def images(location)
    response = pexel_conn('https://api.pexels.com/v1/').get('search') do |f|
      f.params[:query] = location
      f.params[:per_page] = 3
    end
    json(response)[:photos][0]
  end
  #add photographer and photographer pare response[:photos][0][:photographer]
end
