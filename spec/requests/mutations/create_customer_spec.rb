require 'rails_helper'

RSpec.describe 'createCustomer', type: :request do
  describe 'HAPPY PATH' do
    it 'returns values' do
      Driver.create!(name: 'Smokey', id: 1)
      post '/graphql', params: { query: happy_query }

      expect(response).to be_successful
      response_body = JSON.parse(response.body, symbolize_names: true)
      data = response_body[:data]
      expect(data).to have_key(:createCustomer)
      expect(data[:createCustomer]).to have_key(:id)
      expect(data[:createCustomer]).to have_key(:name)
      expect(data[:createCustomer]).to have_key(:driverId)
    end
  end

  describe 'SAD PATH' do
    it 'returns error if incomplete data is provided' do
      body = ""
      post '/graphql', params: { query: sad_query }

      expect(response).to be_successful
      response_body = JSON.parse(response.body, symbolize_names: true)
      expect(response_body).to have_key(:errors)
      expect(response_body[:errors].first[:message]).to eq("Field 'createCustomer' is missing required arguments: driverId")
    end
  end

  def happy_query
    <<~GQL
      mutation {
        createCustomer(
          name: "Dong Johnson",
          driverId: 1
      ) {
            id
            name
            driverId
      }}
    GQL
  end

  def sad_query
    <<~GQL
      mutation { createCustomer (
          name: "Dong Johnson"
      ) {
          id
          name
          driverId
      }}
    GQL
  end
end
