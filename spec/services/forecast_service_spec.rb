require 'rails_helper'

RSpec.describe 'Openweather Forecast Service' do
  it 'Retrieves current weather conditions' do
    lat = 39.738453
    lon = -104.984853
    response = ForecastService.new.forecast(lat, lon)

    expect(response[:current]).not_to be_nil
    expect(response[:hourly]).not_to be_nil
    expect(response[:daily]).not_to be_nil
    expect(response[:current]).to have_key(:temp)
    expect(response[:current]).to have_key(:feels_like)
    expect(response[:current]).to have_key(:humidity)
    expect(response[:current]).to have_key(:visibility)
    expect(response[:current]).to have_key(:uvi)
    expect(response[:current]).to have_key(:sunrise)
    expect(response[:current]).to have_key(:sunset)
    expect(response[:current][:weather][0]).to have_key(:description)
    expect(response[:current][:weather][0]).to have_key(:icon)
    expect(response[:hourly][0]).to have_key(:temp)
    expect(response[:hourly][0]).to have_key(:feels_like)
    expect(response[:hourly][0]).to have_key(:humidity)
    expect(response[:hourly][0]).to have_key(:visibility)
    expect(response[:hourly][0][:weather][0]).to have_key(:description)
    expect(response[:hourly][0][:weather][0]).to have_key(:icon)
    expect(response[:daily][0]).to have_key(:temp)
    expect(response[:daily][0]).to have_key(:feels_like)
    expect(response[:daily][0]).to have_key(:humidity)
    expect(response[:daily][0]).to have_key(:uvi)
    expect(response[:daily][0]).to have_key(:sunrise)
    expect(response[:daily][0]).to have_key(:sunset)
    expect(response[:daily][0][:weather][0]).to have_key(:description)
    expect(response[:daily][0][:weather][0]).to have_key(:icon)
  end
end
