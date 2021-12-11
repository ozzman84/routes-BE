require 'rails_helper'

RSpec.describe 'createLocation', type: :request do
  describe 'HAPPY PATH' do
    it 'returns values' do
      company = WasteCompany.create!(id: 1, name: "Candle Company", street_address: "519 W Water St", city: "Centerville", state: "IN")
      driver = company.drivers.create!(name: 'Smokey', id: 1)
      customer = driver.customers.create!(name: 'Johnny', id: 1)
      post '/graphql', params: { query: happy_query }

      expect(response).to be_successful
      response_body = JSON.parse(response.body, symbolize_names: true)
      data = response_body[:data]
      expect(data).to have_key(:createLocation)
      expect(data[:createLocation]).to have_key(:id)
      expect(data[:createLocation]).to have_key(:streetAddress)
      expect(data[:createLocation]).to have_key(:city)
      expect(data[:createLocation]).to have_key(:state)
      expect(data[:createLocation]).to have_key(:pickupDay)
      expect(data[:createLocation]).to have_key(:numberOfBins)
      expect(data[:createLocation]).to have_key(:pickedUp)
      expect(data[:createLocation]).to have_key(:customerId)
    end
  end

  describe 'SAD PATH' do
    it 'returns error if incomplete data is provided' do
      post '/graphql', params: { query: sad_query }

      expect(response).to be_successful
      response_body = JSON.parse(response.body, symbolize_names: true)
      expect(response_body).to have_key(:errors)
      expect(response_body[:errors].first[:message]).to eq("Field 'createLocation' is missing required arguments: pickupDay, numberOfBins")
    end
  end

  def happy_query
    <<~GQL
    mutation { createLocation (
        streetAddress: "160 W Liberty St",
        city: "Reno",
        state: "NV",
        pickupDay: "Monday",
        numberOfBins: 4,
        pickedUp: false,
        customerId: 1
    ) {
        id
        streetAddress
        city
        state
        pickupDay
        numberOfBins
        pickedUp
        customerId
    }}
    GQL
  end

  def sad_query
    <<~GQL
    mutation { createLocation (
        streetAddress: "160 W Liberty St",
        city: "Reno",
        state: "NV",
        pickedUp: false,
        customerId: 1
    ) {
        id
        streetAddress
        city
        state
        pickupDay
        numberOfBins
        pickedUp
        customerId
    }}
    GQL
  end
end
