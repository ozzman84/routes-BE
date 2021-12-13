require 'rails_helper'


RSpec.describe 'getCustomerLocations' do
  describe 'HAPPY PATH' do
    it 'gets customer locations' do
      company = WasteCompany.create!(id: 1, name: "Candle Company", street_address: "519 W Water St", city: "Centerville", state: "IN")
      driver = company.drivers.create!(id: 1, name: "Jeffery Jefferson")
      customer = driver.customers.create!(name: "Customer A", id: 1)
      customer_2 = driver.customers.create!(name: "Customer B", id: 2)
      location_a = customer.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
      location_b = customer_2.locations.create!(number_of_bins: 3, street_address: "706 Poplar Ave", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
      location_c = customer.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)
      post '/graphql', params: { query: happy_query }
      binding.pry


      expect(response).to be_successful
      response_body = JSON.parse(response.body, symbolize_names: true)
      data = response_body[:data]
      expect(data).to have_key(:getCustomerLocations)
      expect(data[:getCustomerLocations]).to be_a(Array)
      expect(data[:getCustomerLocations].first).to have_key(:streetAddress)
      expect(data[:getCustomerLocations].first).to have_key(:city)
      expect(data[:getCustomerLocations].first).to have_key(:state)
      expect(data[:getCustomerLocations].first).to have_key(:pickedUp)
      expect(data[:getCustomerLocations].first).to have_key(:pickupDay)
      expect(data[:getCustomerLocations].first).to have_key(:numberOfBins)
      expect(data[:getCustomerLocations]).to have_key(:driverId)
    end
  end
end

def happy_query
  <<~GQL
    {
      getCustomerLocations(customerId: 1){
        driverId
        locations
      }
    }
  GQL
end
