require 'rails_helper'

describe 'MapQuest Directions API' do
  it 'Calculates trip duration' do
    conn = Faraday.new('http://www.mapquestapi.com/')
    response = conn.get('directions/v2/route') do |f|
      f.params[:from] = 'denver,co'
      f.params[:to] = 'pueblo,co'
      f.params[:key] = ENV['MAPQUEST_KEY']
    end

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:route]).to have_key(:formattedTime)
    expect(json[:route][:formattedTime]).to eq('01:43:57')

    expect(json[:route][:locations][0]).to have_key(:adminArea5)
    expect(json[:route][:locations][0][:adminArea5]).to eq("Denver")

    expect(json[:route][:locations][1]).to have_key(:adminArea5)
    expect(json[:route][:locations][1][:adminArea5]).to eq("Pueblo")
  end
end
