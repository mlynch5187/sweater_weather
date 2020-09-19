require 'rails_helper'

RSpec.describe 'Openweather API' do
  it 'Retrieves current weather conditions' do
    params = { lat: 39.738453, lon: -104.984853, exclude: "minutely" }
    response = Faraday.get("https://api.openweathermap.org/data/2.5/onecall") do |f|
      f.params[:lat] = params[:lat]
      f.params[:lon] = params[:lon]
      f.params[:exclude] = params[:exclude]
      f.params[:appid] = ENV['OPENWEATHER_KEY']
    end
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json[:current]).not_to be_nil
    expect(json[:hourly]).not_to be_nil
    expect(json[:daily]).not_to be_nil
  end
end
