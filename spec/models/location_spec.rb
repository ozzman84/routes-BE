require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'relationships' do
    it { should belong_to(:customer) }
  end

  describe 'class methods' do
    describe 'happy path #route_by_day_and_driver' do
      it 'finds locations by driver id and pick up day' do
        company = WasteCompany.create!(id: 1, name: "Candle Company", street_address: "519 W Water St", city: "Centerville", state: "IN")
        driver = company.drivers.create!(id: 1, name: "Jeffery Jefferson")
        customer = driver.customers.create!(name: "Customer A")
        location_a = customer.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
        location_b = customer.locations.create!(number_of_bins: 3, street_address: "706 Poplar Ave", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
        location_c = customer.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)
        location_d = customer.locations.create!(number_of_bins: 1, street_address: "205 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: true)

        expect(Location.route_by_day_and_driver(driver.id, "Monday")).to eq([location_a, location_b])
      end
    end
    describe 'sad path #route_by_day_and_driver' do
      it 'raises an error if driver id not valid' do
        company = WasteCompany.create!(id: 1, name: "Candle Company", street_address: "519 W Water St", city: "Centerville", state: "IN")
        driver = company.drivers.create!(id: 1, name: "Jeffery Jefferson")
        customer = driver.customers.create!(name: "Customer A")
        location_a = customer.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
        location_b = customer.locations.create!(number_of_bins: 3, street_address: "706 Poplar Ave", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
        location_c = customer.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)

        expect { Location.route_by_day_and_driver(2, "Monday")}.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end
