require 'rails_helper'

RSpec.describe 'Pexels Service' do
  it 'Retrieves images for location' do
    params = { location: "Denver" }
    conn = Faraday.new('https://api.pexels.com') do |f|
      f.headers['Authorization'] = ENV['PEXELS_KEY']
    end
    response = conn.get('/v1/search') do |f|
      f.params[:query] = params[:location]
      f.params[:per_page] = 3
    end
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:photos][0][:url]).to_not be_nil
    expect(json[:photos][0][:photographer]).to_not be_nil
    expect(json[:photos][0][:photographer_url]).to_not be_nil
  end
end
