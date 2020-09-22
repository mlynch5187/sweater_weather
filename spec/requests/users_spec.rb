require 'rails_helper'

describe "Users spec" do
  it "can create a new user in DB" do
    create(:user)

    params = { "email": "whatever@example.com",
                "password": "password",
                "password_confirmation": "password" }

    post "/api/v1/users", params: params

    expect(response).to be_successful
    expect(User.count).to eq(2)

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data]).to_not be_empty
    expect(json[:data][:id]).to_not be_empty
    expect(json[:data][:attributes][:email]).to eq("whatever@example.com")
    expect(json[:data][:attributes][:api_key]).to_not be_empty
  end

  it "User email must be unique" do

    create(:user, email: "123@example.com")

    params = { "email": "123@example.com",
               "password": "password",
               "password_confirmation": "password" }

    post "/api/v1/users", params: params

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:status]).to eq(400)
    expect(json[:errors][0]).to eq("Email has already been taken")
  end

  it "User email must be unique" do

    create(:user, email: "123@example.com")

    params = { "email": "whatever@example.com",
               "password": "password",
               "password_confirmation": "password9" }

    post "/api/v1/users", params: params

    expect(json[:status]).to eq(400)
    expect(json[:errors][1]).to eq("Password confirmation doesn't match Password")
  end
end
