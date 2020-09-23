require 'rails_helper'

describe 'MapQuest Directions API' do
  xit 'Calculates trip duration' do
    conn = Faraday.new('http://www.mapquestapi.com/')
    response = conn.get('directions/v2/route') do |f|
      f.params[:from] = 'denver,co'
      f.params[:to] = 'pueblo,co'
      f.params[:key] = ENV['MAPQUEST_KEY']
    end

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:routes][0][:legs][0][:duration][:text]).to_not be_empty
    expect(json[:routes][0][:legs][0][:duration][:text]).to eq("1 hour 48 mins")
    expect(json[:routes][0][:legs][0][:end_address]).to eq("Pueblo, CO, USA")
  end
end
