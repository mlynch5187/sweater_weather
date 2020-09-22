require 'rails_helper'

describe "Zomato API" do
  it "can retrive italian restaurants" do
    get "/api/v1/foodie?start=denver,co&end=pueblo,co&search=italian"
    expect(response).to be_successful
  end
end
