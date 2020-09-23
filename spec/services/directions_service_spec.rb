require 'rails_helper'

describe 'MapQuest Directions API' do
  it 'Calculates trip duration' do
    params = { 'from' => 'denver,co', 'to' => 'pueblo,co' }

    response = DirectionsService.new.call(params)

    expect(response.end_coordinates).to have_key(:lng)
    expect(response.end_coordinates[:lng]).to eq(-104.98761)

    expect(response.end_coordinates).to have_key(:lat)
    expect(response.end_coordinates[:lat]).to eq(39.738453)

    expect(response.end_location).to eq('Pueblo')
    expect(response.start_location).to eq('Denver')
    expect(response.travel_time).to eq('01:43:57')
  end
end
