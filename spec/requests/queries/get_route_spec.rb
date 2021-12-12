require 'rails_helper'

RSpec.describe 'Get Route' do
  describe 'HAPPY PATH' do
    xit 'creates optimized route data from driver/day of week' do
      company = WasteCompany.create!(id: 1, name: "Candle Company", street_address: "519 W Water St", city: "Centerville", state: "IN")
      driver = company.drivers.create!(id: 1, name: "Jeffery Jefferson")
      customer = driver.customers.create!(name: "Customer A")
      customer_2 = driver.customers.create!(name: "Customer B")
      location_a = customer.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
      location_b = customer_2.locations.create!(number_of_bins: 3, street_address: "706 Poplar Ave", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
      location_c = customer.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)
      post '/graphql', params: { query: happy_query}

      expect(response).to be_successful
      response_body = JSON.parse(response.body, symbolize_names: true)
      data = response_body[:data]
      expect(data).to have_key(:routeRequest)
      expect(data[:routeRequest]).to be_a(Array)
      expect(data[:routeRequest].first).to have_key(:streetAddress)
      expect(data[:routeRequest].first).to have_key(:city)
      expect(data[:routeRequest].first).to have_key(:state)
      expect(data[:routeRequest].first).to have_key(:latitude)
      expect(data[:routeRequest].first).to have_key(:longitude)
      expect(data[:routeRequest].first).to have_key(:disposalTime)
      expect(data[:routeRequest].first).to have_key(:name)
      expect(data[:routeRequest].first).to have_key(:locationId)
      expect(data[:routeRequest].first).to have_key(:customerId)
    end

    xit 'creates route with same start and end point' do
      company = WasteCompany.create!(id: 1, name: "Candle Company", street_address: "519 W Water St", city: "Centerville", state: "IN")
      driver = company.drivers.create!(id: 1, name: "Jeffery Jefferson")
      customer = driver.customers.create!(name: "Customer A")
      location_a = customer.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
      location_b = customer.locations.create!(number_of_bins: 3, street_address: "706 Poplar Ave", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
      location_c = customer.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)
      post '/graphql', params: { query: happy_query}

      expect(response).to be_successful
      response_body = JSON.parse(response.body, symbolize_names: true)
      data = response_body[:data]
      expect(data[:routeRequest].first[:latitude]).to eq(data[:routeRequest].last[:latitude])
    end
  end

  describe 'SAD PATH' do
    xit 'returns error if driver id is not in the database' do
      company = WasteCompany.create!(id: 1, name: "Candle Company", street_address: "519 W Water St", city: "Centerville", state: "IN")
      driver = company.drivers.create!(id: 1, name: "Jeffery Jefferson")
      customer = driver.customers.create!(name: "Customer A")
      location_a = customer.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
      location_b = customer.locations.create!(number_of_bins: 3, street_address: "706 Poplar Ave", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
      location_c = customer.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)
      response = post '/graphql', params: { query: sad_query }
      response_body = JSON.parse(response.body, symbolize_names: true)
      expect(response).to_not be_successful
    end
  end

  def happy_query
    <<~GQL
      {
        routeRequest(driver: 1,
        pickupDay: "Monday"){
          name
          streetAddress
          city
          state
          latitude
          longitude
          disposalTime
          locationId
          customerId
        }
      }
    GQL
  end

  def sad_query
    <<~GQL
      {
        routeRequest(driver: 3,
        pickupDay: "Monday"){
          name
          streetAddress
          city
          state
          latitude
          longitude
          disposalTime
        }
      }
    GQL
  end
end
