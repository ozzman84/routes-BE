require 'rails_helper'

RSpec.describe "get_all_customers" do
  it 'returns all customers in database' do
    company = WasteCompany.create!(name: 'Sandiego Medical Waste', street_address: '7630 Miramar Rd, 2200', city: 'San Diego', state: 'CA')
    driver1 = company.drivers.create!(name: "Jeffery Jefferson")
    driver2 = company.drivers.create!(name: "Tom Thompson")
    customer_a = driver1.customers.create!(name: "Customer A")
    customer_b = driver1.customers.create!(name: "Customer B")
    customer_c = driver1.customers.create!(name: "Customer C")
    customer_d = driver1.customers.create!(name: "Customer D")
    customer_e = driver1.customers.create!(name: "Customer E")
    customer_f = driver2.customers.create!(name: "Customer F")
    customer_g = driver2.customers.create!(name: "Customer G")
    customer_h = driver2.customers.create!(name: "Customer H")
    customer_i = driver2.customers.create!(name: "Customer I")
    customer_j = driver2.customers.create!(name: "Customer J")

    post '/graphql', params: { query: all_customers}

    expect(response).to be_successful
    response_body = JSON.parse(response.body, symbolize_names: true)
    data = response_body[:data]
    expect(data).to have_key(:allCustomers)
    expect(data[:allCustomers].first).to have_key(:id)
    expect(data[:allCustomers].first).to have_key(:name)
    expect(data[:allCustomers].first).to have_key(:driverId)
  end


    def all_customers
      <<~GQL
        {
          allCustomers {
            id
            name
            driverId
          }
        }
      GQL
    end
  end
