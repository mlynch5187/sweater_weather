require 'rails_helper'

describe "User Login" do
  it "Can login with username and password" do

    # params = {
    #   email: "whatever@example.com",
    #   password: "password",
    #   password_confirmation: "password"
    # }

    post "/api/v1/users"
    expect(response).to be_successful
  end
end
