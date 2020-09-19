require 'rails_helper'

describe "Openweather API" do
  it "can access forecast route" do
    get "/api/v1/forecast"
  end

  it "can retrieve longitude and latitude" do
    get "/api/v1/forecast?location=denver,co"
  end
end
