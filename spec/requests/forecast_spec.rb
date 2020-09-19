require 'rails_helper'

describe "Openweather API" do
  it "can retrieve longitude and latitude" do
    get "/api/v1/forecast?location=denver,co"
    expect(response).to be_successful
  end
end
