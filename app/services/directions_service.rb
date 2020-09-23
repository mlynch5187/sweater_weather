class DirectionsService < BaseService
  def call(params)
    response = conn('http://www.mapquestapi.com/').get('directions/v2/route') do |f|
      f.params[:key] = ENV['MAPQUEST_KEY']
      f.params[:from] = params['from']
      f.params[:to] = params['to']
    end
    json = json(response)
    Direction.new(json)
  end
end
