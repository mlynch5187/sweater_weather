require 'rails_helper'

describe "Openweather API" do

  it "can retrieve longitude and latitude" do
    get "/api/v1/forecast?location=baltimore,md"
  end
end
