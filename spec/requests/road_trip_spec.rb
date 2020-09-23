require 'rails_helper'

describe 'A Road Trip' do
  xit 'Has attributes' do
    User.create(email: 'email@example.com', password: 'password', api_key: 123456789112)

    params = {  "id": nil,
                "from": "Denver,CO",
                "to": "Pueblo,CO",
                "api_key": 123456789112 }

    post '/api/v1/road_trip', params: params.to_json

    expect(response).to be_successful

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data]).to_not be_empty
    expect(json[:data][:type]).to eq('road_trip')
    expect(json[:data][:attributes]).to have_key(:origin)
    expect(json[:data][:attributes]).to have_key(:destination)
    expect(json[:data][:attributes]).to have_key(:travel_time)
    expect(json[:data][:attributes]).to have_key(:arrival_forecast)
  end

  xit 'User API key must be valid' do
    User.create(email: 'whatever@example.com', password: 'password', api_key: 99876543)

    params = { 'origin': 'Denver,CO',
               'destination': 'Pueblo,CO',
               'api_key': 123456789112 }

    post '/api/v1/road_trip', params: params.to_json

    json = JSON.parse(response.body)

    expect(json['status']).to eq(401)
    expect(json['errors']).to eq('API key is invalid.')
  end

  xit 'User API key must exist ' do
    User.create(email: 'email@example.com', password: 'password', api_key: 123456789112)

    params = { 'origin': 'Denver,CO',
               'destination': 'Pueblo,CO' }

    post '/api/v1/road_trip', params: params.to_json

    json = JSON.parse(response.body)

    expect(json['status']).to eq(401)
    expect(json['errors']).to eq('API key is invalid.')
  end
end
