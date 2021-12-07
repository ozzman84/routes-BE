require 'rails_helper'

RSpec.describe RouteFacade do
  xit 'creates a route object from service info' do
    driver = Driver.create!(id: 1, name: "Jeffery Jefferson")
    customer = driver.customers.create!(name: "Customer A")
    location_a = customer.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
    location_b = customer.locations.create!(number_of_bins: 3, street_address: "706 Poplar St", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
    location_c = customer.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)
    results = RouteFacade.create_route(driver.id, "Monday")

    expect(results).to eq(4)
  end
end
