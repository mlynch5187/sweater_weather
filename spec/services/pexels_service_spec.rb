require 'rails_helper'

RSpec.describe 'Pexels Service' do
  it 'Retrieves an images for location' do
    location = 'denver, co'
    response = PexelsService.new.images(location)

    expect(response[:photographer]).to_not be_nil
    expect(response[:photographer_url]).to_not be_nil
    expect(response[:src][:original]).to_not be_nil
  end
end
