require 'rails_helper'

RSpec.describe ZomatoService do
  before(:each) do
    location = "denver,co"
    @zomato_service = ZomatoService.new(location)
  end

  it 'is an instance of Zomato Service' do
    expect(@zomato_service).to be_an_instance_of(ZomatoService)
  end

  it 'can get city id' do
   city_id = @zomato_service.city_id
   expect(city_id).to eq(305)
  end
end

# Your API will return:
# the end city
# estimated travel time
# the name and address of a restaurant that matches the search parameter
# the forecast at your time of arrival
# Your response should be similar to the format below:
# {
#   "data": {
#     "id": "null",
#     "type": "foodie",
#     "attributes": {
#       "end_location": "pueblo,co",
#       "travel_time": "1 hours 48 min",
#       "forecast": {
#         "summary": "Cloudy with a chance of meatballs",
#         "temperature": "83"
#       },
#       "restaurant": {
#         "name": "Angelo's Pizza Parlor",
#         "address": "105 E Riverwalk, Pueblo 81003"
#       }
#     }
#   }
# }
