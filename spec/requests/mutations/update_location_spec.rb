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
          #   customer_id: 'Store 1'
          # }

          driver = Driver.new(name: 'Steve')
          customer = Customer.new(name: 'Store 1', driver_id: 1)
          location = Location.new(
            street_address: '1234 Main St',
            city: 'Denver',
            state: 'CO',
            pickup_day: '10-12-30',
            number_of_bins: 1,
            picked_up: false,
            customer_id: 'Store 1'
          )

          post 'graphql', params: { query: query(
              street_address: '1234 Main St',
              city: 'Denver',
              state: 'CO',
              pickup_day: '10-12-30',
              number_of_bins: 1,
              picked_up: false,
              customer_id: 'Store 1'
            )
          }

          expect(location.reload).to have_attributes(street_params)
        end
      end

      def query(id:, customer_id:)
        <<~GQL
          mutation {
            updateLocation(
              id: #{id}
              customer_id: #{customer_id}
            ) {
                street_address: '1234 Main St'
                city: 'Denver'
                state: 'CO'
                pickup_day: '10-12-30'
                number_of_bins: 1
                picked_up: false
                customer_id: 'Store 1'
              }
            }
          }
        GQL
      end
    end
  end
end
