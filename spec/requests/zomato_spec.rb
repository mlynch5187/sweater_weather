require 'rails_helper'

describe "Zomato API" do
  it "can retrive italian restaurants" do
    get "/api/v1/foodie?start=denver,co&end=pueblo,co&search=italian"

    expect(response).to be_successful

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data][:attributes][:forecast]).to eq('clear sky')
    expect(json[:data][:attributes][:travel_time_minutes]).to eq("41")
    expect(json[:data][:attributes][:travel_time_hours]).to eq("00")
    expect(json[:data][:attributes][:restaurant_name]).to eq("Bingo Burger")

    expect(json[:data][:attributes][:restaurant_location][:city]).to eq('Pueblo')
    expect(json[:data][:attributes][:restaurant_location][:city_id]).to eq(535)
    expect(json[:data][:attributes][:restaurant_location][:zipcode]).to eq('81003')
    expect(json[:data][:attributes][:restaurant_location][:address]).to eq('101 Central Plaza 81003')
  end
end
