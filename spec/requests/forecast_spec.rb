require 'rails_helper'

describe 'Openweather API' do
  it 'Can retrieve forecast from location' do
    get '/api/v1/forecast?location=denver,co'

    expect(response).to be_successful

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data][:type]).to eq('forecast')
    expect(json[:data][:attributes][:hourly]).to_not be_empty
    expect(json[:data][:attributes][:daily]).to_not be_empty
    expect(json[:data][:attributes][:current]).to_not be_empty
    expect(json[:data][:attributes][:current]).to have_key(:temp)
    expect(json[:data][:attributes][:current][:weather][0]).to have_key(:description)
  end

  xit 'returns an error if the location is wrong' do
    get '/api/v1/forecast?location=abcedfghijklmnopqrstuvwxyz'

    expect(response).to be_successful

    expect(json[:status]).to eq(200)
    expect(json[:data][:results]).to eq([])
  end
end
