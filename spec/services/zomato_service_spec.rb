require 'rails_helper'

RSpec.describe ZomatoService, :vcr do
  before(:each) do
    @location = { city: 'Denver', state: 'CO'
    @zomato_service = ZomatoService.new(@location)
  end

  it 'is an instance of Zomato Service' do
    expect(@zomato_service).to be_an_instance_of(ZomatoService)
  end
end
