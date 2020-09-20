require 'rails_helper'

describe "User Login" do
  it "Can register with username and password" do
    params = {
      email: "whatever@example.com",
      password: "password123",
      password_confirmation: "password123"
    }

    uri = URI.parse("https://localhost:3000/api/v1/users")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.request_uri, params)
    request.body = params.to_json
    response = http.request(request)
    require "pry"; binding.pry
    expect(response).to be_successful
  end
end
