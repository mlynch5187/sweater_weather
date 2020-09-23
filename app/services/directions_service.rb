class DirectionsService < BaseService
  def call(params)
    response = conn('https://maps.googleapis.com/').get('maps/api/directions/json') do |f|
      f.params[:origin] = params[:origin]
      f.params[:origin] = params[:destination]
      f.params[:key] = ENV['MAPQUEST_KEY']
    end
    json(response)
    Directions.new(response)
  end
end
