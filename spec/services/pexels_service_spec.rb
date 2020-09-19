require 'rails_helper'

RSpec.describe 'Pexels Service' do
  it 'Retrieves an images for location' do
    location = 'denver, co'
    response = PexelsService.new.images(location)
  end
end
