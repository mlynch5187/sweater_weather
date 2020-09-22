class ZomatoService < BaseService

  def initialize(end_city)
    @end_city = end_city
  end

  def city_id
      response = zomato_conn('https://developers.zomato.com').get('/api/v2.1/cities') do |f|
        f.params[:q] = @end_city
        f.params[:count] = 1
      end
      json(response)[:location_suggestions][0][:id]
    end

  def restaurant
    location = city_id
    response = zomato_conn('https://developers.zomato.com').get('/api/v2.1/search') do |f|
    f.params[:entity_id] = location
    f.params[:entity_type] = 'city'
    f.params[:count] = 1
    f.params[:radius] = 5
    end
    require "pry"; binding.pry
   json(response)[:restaurants][0][:restaurant]
  end
end
