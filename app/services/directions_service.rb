class DirectionsService < BaseService
  def call(params)
    response = conn('http://www.mapquestapi.com/').get('directions/v2/route') do |f|
      f.params[:key] = ENV['MAPQUEST_KEY']
      f.params[:from] = params[:origin]
      f.params[:to] = params[:destination]
    end
    json(response)
    Directions.new(response)
  end
end
