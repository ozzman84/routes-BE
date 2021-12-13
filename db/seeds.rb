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

company = WasteCompany.create!(name: 'Sandiego Medical Waste', street_address: '7630 Miramar Rd, 2200', city: 'San Diego', state: 'CA')
driver1 = company.drivers.create!(name: "Jeffery Jefferson")
driver2 = company.drivers.create!(name: "Tom Thompson")
customer_a = driver1.customers.create!(name: "Customer A")
customer_a.locations.create!(number_of_bins: 2, street_address: "702 Pearl St", city: "La Jolla", state: "CA", pickup_day: "Monday", picked_up: false)
customer_a.locations.create!(number_of_bins: 3, street_address: "9990 Mesa Rim Rd", city: "San Diego", state: "CA", pickup_day: "Tuesday", picked_up: false)
customer_a.locations.create!(number_of_bins: 1, street_address: "4425 Bannock Ave", city: "San Diego", state: "CA", pickup_day: "Wednesday", picked_up: false)
customer_b = driver1.customers.create!(name: "Customer B")
customer_b.locations.create!(number_of_bins: 2, street_address: "6048 Cornerstone Ct", city: "San Diego", state: "CA", pickup_day: "Monday", picked_up: false)
customer_b.locations.create!(number_of_bins: 5, street_address: "5665 Oberlin Dr", city: "San Diego", state: "CA", pickup_day: "Tuesday", picked_up: false)
customer_c = driver1.customers.create!(name: "Customer C")
customer_c.locations.create!(number_of_bins: 4, street_address: "3737 Moraga Ave", city: "San Diego", state: "CA", pickup_day: "Thursday", picked_up: false)
customer_d = driver1.customers.create!(name: "Customer D")
customer_d.locations.create!(number_of_bins: 1, street_address: "3030Bunker Hill St", city: "San Diego", state: "CA", pickup_day: "Friday", picked_up: false)
customer_d.locations.create!(number_of_bins: 2, street_address: "3517 Del Rey St", city: "San Diego", state: "CA", pickup_day: "Friday", picked_up: false)
customer_d.locations.create!(number_of_bins: 1, street_address: "3737 Sports Arena Blvd", city: "San Diego", state: "CA", pickup_day: "Thursday", picked_up: false)
customer_e = driver1.customers.create!(name: "Customer E")
customer_e.locations.create!(number_of_bins: 1, street_address: "3435 Del Mar Heights Rd", city: "San Diego", state: "CA", pickup_day: "Thursday", picked_up: false)
customer_e.locations.create!(number_of_bins: 2, street_address: "12843 El Camino Real", city: "San Diego", state: "CA", pickup_day: "Tuesday", picked_up: false)
customer_e.locations.create!(number_of_bins: 3, street_address: "3888 Greenwood St", city: "San Diego", state: "CA", pickup_day: "Wednesday", picked_up: false)
customer_e.locations.create!(number_of_bins: 2, street_address: "3145 Rosecrans St", city: "San Diego", state: "CA", pickup_day: "Monday", picked_up: false)
customer_e.locations.create!(number_of_bins: 1, street_address: "11943 El Camino Real", city: "San Diego", state: "CA", pickup_day: "Thursday", picked_up: false)
customer_f = driver2.customers.create!(name: "Customer F")
customer_f.locations.create!(number_of_bins: 1, street_address: "1525 W Lewis St", city: "San Diego", state: "CA", pickup_day: "Wednesday", picked_up: false)
customer_f.locations.create!(number_of_bins: 4, street_address: "10865 Road to the Cure", city: "San Diego", state: "CA", pickup_day: "Friday", picked_up: false)
customer_g = driver2.customers.create!(name: "Customer G")
customer_g.locations.create!(number_of_bins: 2, street_address: "3900 Fifth Ave", city: "San Diego", state: "CA", pickup_day: "Friday", picked_up: false)
customer_h = driver2.customers.create!(name: "Customer H")
customer_h.locations.create!(number_of_bins: 2, street_address: "10635 Roselle St", city: "San Diego", state: "CA", pickup_day: "Friday", picked_up: false)
customer_h.locations.create!(number_of_bins: 3, street_address: "10637 Roselle St", city: "San Diego", state: "CA", pickup_day: "Friday", picked_up: false)
customer_h.locations.create!(number_of_bins: 2, street_address: "2650 Camino Del Rio", city: "San Diego", state: "CA", pickup_day: "Monday", picked_up: false)
customer_h.locations.create!(number_of_bins: 1, street_address: "2650 Camino Del Rio", city: "San Diego", state: "CA", pickup_day: "Wednesday", picked_up: false)
customer_i = driver2.customers.create!(name: "Customer I")
customer_i.locations.create!(number_of_bins: 1, street_address: "4142 Adams Ave", city: "San Diego", state: "CA", pickup_day: "Wednesday", picked_up: false)
customer_i.locations.create!(number_of_bins: 3, street_address: "6402 El Cajon Blvd", city: "San Diego", state: "CA", pickup_day: "Wednesday", picked_up: false)
customer_j = driver2.customers.create!(name: "Customer J")
customer_j.locations.create!(number_of_bins: 3, street_address: "5550 Kearny Mesa Rd", city: "San Diego", state: "CA", pickup_day: "Tuesday", picked_up: false)
customer_j.locations.create!(number_of_bins: 2, street_address: "7740 Clairemont Mesa Blvd", city: "San Diego", state: "CA", pickup_day: "Thursday ", picked_up: false)
