require 'rails_helper'

RSpec.describe RouteFacade do
  it 'creates a route object from service info' do
    stub_request(:get, "http://www.mapquestapi.com/directions/v2/optimizedroute?json=%7B'locations':%5B%22519%20W%20Water%20St,%20Centerville,%20IN%22,%20%22519%20W%20Water%20St,%20Centerville,%20IN%22%5D%7D&key=9inJSAdkW6jXoS91aivivVfg83dGdAYF").to_return(body: File.read(File.join('spec', 'fixtures', 'route_facade.json')))
    company = WasteCompany.create!(id: 1, name: "Candle Company", street_address: "519 W Water St", city: "Centerville", state: "IN")
    driver = company.drivers.create!(name: 'Smokey', id: 1)
    customer = driver.customers.create!(name: "Customer A")
    location_a = customer.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
    location_b = customer.locations.create!(number_of_bins: 3, street_address: "706 Poplar St", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
    location_c = customer.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)
    results = RouteFacade.create_route({driver: driver.id, pickup_day: "Monday"})
    expect(results).to be_a(Array)
    expect(results.length).to eq(2)
    expect(results.first).to be_a(RouteStop)
  end
end
