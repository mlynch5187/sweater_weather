require 'rails_helper'

describe 'When a user logs in' do
  it 'A new session is created' do
    api_key = '123456789112'

    User.create(email: 'whatever@example.com', password: 'password', api_key: api_key)

    params = { 'email': 'whatever@example.com',
               'password': 'password' }

    create(:user)

    post '/api/v1/sessions', params: params, as: :json

    expect(response).to be_successful

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data]).to_not be_empty
    expect(json[:data][:attributes][:email]).to eq('whatever@example.com')
    expect(json[:data][:attributes][:api_key]).to eq(api_key)
  end

  it 'Requires valid credentials' do
    api_key = '123456789112'

    User.create(email: 'whatever@example.com', password: 'password', api_key: api_key)

    params = { 'email': 'whatever@example.com',
               'password': 'wrongpassword' }

    post '/api/v1/sessions', params: params, as: :json

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:errors]).to eq('Those credentials are invalid. Please try again')
    expect(json[:status]).to eq(400)
  end
end
