# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# driver1 = Driver.create!(name: 'Johnson Johnson')
# customer1 = driver.customers.create!(name: "Customer A")
# location_a = customer1.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
# location_b = customer1.locations.create!(number_of_bins: 3, street_address: "706 Poplar Ave", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
# location_c = customer1.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)
WasteCompany.destroy_all
Driver.destroy_all
Customer.destroy_all
Location.destroy_all

company = WasteCompany.create!(name: 'Candle Company Waste', street_address: '519 W Water St', city: 'Centerville', state: 'IN')
driver2 = company.drivers.create!(name: "Jeffery Jefferson")
customer2 = driver2.customers.create!(name: "Customer A")
location_a = customer2.locations.create!(number_of_bins: 2, street_address: "8242 George Early Rd", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
location_b = customer2.locations.create!(number_of_bins: 3, street_address: "706 Poplar Ave", city: "Centerville", state: "IN", pickup_day: "Monday", picked_up: false)
location_c = customer2.locations.create!(number_of_bins: 1, street_address: "203 McMinn Rd", city: "Centerville", state: "IN", pickup_day: "Tuesday", picked_up: false)
