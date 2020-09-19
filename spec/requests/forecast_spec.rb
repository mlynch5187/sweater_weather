require 'rails_helper'

describe "Openweather API" do
  xit "can access forecast route" do
    get "/api/v1/forecast"
  end

  xit "can retrieve longitude and latitude" do
    get "/api/v1/forecast?location=denver,co"
  end
end
