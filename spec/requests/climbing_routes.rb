require 'rails_helper'

describe "Mountain Project Data API" do
  it "can finds routes based on location" do
    get "/api/v1/climbing_routes?location=erwin,tn"
    expect(response).to be_successful
  end
end
