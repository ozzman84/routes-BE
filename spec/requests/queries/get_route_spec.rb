require 'rails_helper'

RSpec.describe 'Get Route' do
  describe 'happy path' do
    it 'creates optimized route data from driver/day of week' do
      driver = Driver.create!(id: 1, name: "Jeffery Jefferson")
      customer = driver.customers.create!(name: "Customer A")
      location_a = customer.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
      location_b = customer.locations.create!(number_of_bins: 3, street_address: "706 Poplar Ave", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
      location_c = customer.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)
      post '/graphql', params: { query: happy_query}
      binding.pry
      expect(response).to be_successful


    end
  end

  def happy_query
    <<~GQL
      {
        routeRequest(driver: 1,
        pickupDay: "Monday"){
          id
          route
      }}
    GQL
  end
end
