require 'rails_helper'

RSpec.describe 'MapQuest Geocoding Service' do
  it 'Retrieves latitude and longitude of an address' do
    response = MapQuestService.new.longitude_latitude("denver, co")

    expect(response).to have_key(:lat)
    expect(response[:lat]).to eq(39.738453)

    expect(response).to have_key(:lng)
    expect(response[:lng]).to eq(-104.984853)
  end
end
