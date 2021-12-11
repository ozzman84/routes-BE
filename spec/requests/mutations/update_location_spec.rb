require 'rails_helper'

RSpec.describe "Update Location", type: :request do
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

      post '/graphql', params: { query: pickup_day_query(id: location.id, pickup_day: "Tuesday") }

      location.reload
      json = JSON.parse(response.body)

      expect(location.pickup_day).to eq('Tuesday')
      expect(json['data']['updateLocation']['pickupDay']).to eq('Tuesday')
    end
  end

  def pickup_day_query(id:, pickup_day:)
    <<~GQL
      mutation {
        updateLocation(
          id: #{id},
          pickupDay: "#{pickup_day}"
        ) {
            pickupDay
          }
        }
    GQL
  end
end
