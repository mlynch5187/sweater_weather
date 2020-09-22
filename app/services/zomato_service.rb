class ZomatoService < BaseService

  def initialize(end_city)
    @end_city = end_city
  end

  def city_id
      response = zomato_conn('https://developers.zomato.com/api/v2.1').get('/cities') do |c|
        c.params['q'] = @end_city
        c.params['count'] = 1
      end
      json(response)
    end
end
