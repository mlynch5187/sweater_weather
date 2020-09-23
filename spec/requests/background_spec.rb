require 'rails_helper'

describe "Pexels API" do
  it "retrieves an image based on location" do
    get "/api/v1/backgrounds?location=denver,co"
    expect(response).to be_successful

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data][:attributes][:url]).to_not be_empty
    expect(json[:data][:attributes][:photographer]).to_not be_empty
    expect(json[:data][:attributes][:photographer_url]).to_not be_empty
    expect(json[:data][:attributes]).to have_key(:url)
    expect(json[:data][:attributes]).to have_key(:photographer)
    expect(json[:data][:attributes]).to have_key(:photographer_url)
  end
end
