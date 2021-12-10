require 'rails_helper'

module Mutations
  module Location
    RSpec.describe UpdateLocation, type: :request do
      describe 'resolve' do
        it 'updates a location' do

          # street_params {
          #   street_address: '1234 Main St',
          #   city: 'Denver',
          #   state: 'CO',
          #   pickup_day: '10-12-30',
          #   number_of_bins: 1,
          #   picked_up: false,
          #   customer_id: 'Store
          # }

          driver = Driver.create!(name: 'Steve')
          customer = Customer.create!(name: 'Store 1', driver_id: driver.id)
          location = customer.locations.create!(
            street_address: '1234 Main St',
            city: 'Denver',
            state: 'CO',
            pickup_day: 'Monday',
            number_of_bins: 1,
            picked_up: false,
            customer_id: customer.id
          )

          # expect(location.reload).to have_attributes('Monday')
          post '/graphql', params: { query: pickup_day_query(location.id, 'Tuesday') }
          # post 'graphql', params: { query: query(
          location.reload

          expect(location.pickup_day).to eq('Tuesday')
          #     street_address: '1234 Main St',
          #     city: 'Denver',
          #     state: 'CO',
          #     pickup_day: '10-12-30',
          #     number_of_bins: 1,
          #     picked_up: false,
          #     customer_id: 'Store 1'
          #   )
          # }

        end
      end

      def pickup_day_query(id, pickup_day)
        <<~GQL
          mutation {
            updateLocation(
              id: #{id},
              pickupDay: #{pickup_day}
            ) {
                streetAddress
                city
                state
                pickupDay
                numberOfBins
                pickedUp
                customerId
              }
            }
        GQL
      end
    end
  end
end
