require 'rails_helper'

describe "Pexels API" do
  it "retrieves an image based on location" do
    get "/api/v1/backgrounds?location=denver,co"
    expect(response).to be_successful
  end
end
