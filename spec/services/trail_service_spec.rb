require 'rails_helper'

RSpec.describe 'Trail Service' do
  it 'Retrieves route information based upon start location' do
    response = TrailService.new.local_routes("erwin,tn")

    # expect(response[:lat]).to eq(39.738453)
    # expect(response[:lng]).to eq(-104.984853)
  end
end





# current forecast for the start location
# name of the route
# type of each route
# rating of each route
# location of each route
# estimated travel time to each route
# Your response should be in the format below:
# {
#   "data": {
#     "id": "null",
#     "type": "climbing route",
#     "attributes": {
#       "location": "erwin,tn",
#       "forecast": {
#         "summary": "Raining cats and dogs",
#         "temperature": "65"
#       },
#       "routes": [
#         {
#           "name": "Dopey Duck",
#           "type": "Trad",
#           "rating": "5.9",
#           "location": [
#             "North Carolina",
#             "2. Northern Mountains Region",
#             "Linville Gorge",
#             "Shortoff Mountain"
#           ]
#           "distance_to_route": "76.876"
#         },
#         {
#           "name": "Straight and Narrow",
#           "type": "Trad"
#           "rating": "5.10a"
#           "location": [
#             "North Carolina",
#             "2. Northern Mountains Region",
#             "Linville Gorge",
#             "Shortoff Mountain"
#           ]
#           "distance_to_route": "76.876"
#         },
#         {...}
#       ]
#     }
#   }
# }
