class ZomatoService < BaseService
  def initialize(search_params)
  end

  def not_sure_yet(search_params)
    response = zomato_conn('https://developers.zomato.com/api/v2.1').get('') do |f|
      f.params[''] = ''
    end
    json(response)
  end
end
