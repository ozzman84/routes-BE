require 'rails_helper'

RSpec.describe "Delete Location", type: :request do
  describe 'resolve' do
    it 'updates a location' do
      company = WasteCompany.create!(
        name: 'Candle Company Waste',
        street_address: '519 W Water St',
        city: 'Centerville',
        state: 'IN'
      )
      driver = company.drivers.create!(name: 'Steve')
      customer = Customer.create!(name: 'Store 1', driver_id: driver.id)
      location = customer.locations.create!(
        street_address: '1234 Main St',
        city: 'Denver',
        state: 'CO',
        pickup_day: 'Monday',
        number_of_bins: 1,
        picked_up: false,
      )

      post '/graphql', params: { query: pickup_day_query(id: location.id) }


      expect(response).to be_successful
      json = JSON.parse(response.body, symbolize_names: true)
      expect(json).to have_key(:data)
      expect(json[:data]).to have_key(:deleteLocation)
      expect(json[:data][:deleteLocation]).to have_key(:id)
      expect(json[:data][:deleteLocation]).to have_key(:streetAddress)
    end
  end

  def pickup_day_query(id:)
    <<~GQL
      mutation {
        deleteLocation(
          id: #{id}
        ) {
            id
            streetAddress
          }
        }
    GQL
  end
end
