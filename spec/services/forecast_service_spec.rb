require 'rails_helper'

RSpec.describe 'Openweather Forecast Service' do
  it 'Retrieves current weather conditions' do
    lat = 39.738453
    lon = -104.984853
    response = ForecastService.new.forecast(lat, lon)

    expect(response[:current]).not_to be_nil
    expect(response[:hourly]).not_to be_nil
    expect(response[:daily]).not_to be_nil
  end
end
