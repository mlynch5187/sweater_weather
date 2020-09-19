require 'rails_helper'

RSpec.describe 'MapQuest Geocoding Service' do
  it 'Retrieves latitude and longitude of an address' do
    params = { address: "Denver,CO" }
    response = Faraday.get('http://www.mapquestapi.com/geocoding/v1/address') do |f|
      f.params[:key] = ENV['MAPQUEST_KEY']
      f.params[:location] = params[:address]
    end
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json[:results][0][:locations][0][:latLng][:lat]).to eq(39.738453)
    expect(json[:results][0][:locations][0][:latLng][:lng]).to eq(-104.984853)
  end
end
