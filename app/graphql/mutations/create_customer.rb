module Mutations
  class CreateCustomer < BaseMutation
    # arguments passed to the `resolve` method
    argument :name, String, required: true
    argument :number_of_bins, Integer, required: true
    argument :street_address, String, required: true
    argument :city, String, required: true
    argument :state, String, required: true
    argument :driver_id, Integer, required: true
    argument :picked_up, Boolean, required: true

    # return type from the mutation
    type Types::CustomerType

    def resolve(name: nil, number_of_bins: nil, street_address: nil, city: nil, state: nil, driver_id: nil, picked_up: nil)
      Customer.create!(
        name: name,
        number_of_bins: number_of_bins,
        street_address: street_address,
        city: city,
        state: state,
        driver_id: driver_id,
        picked_up: picked_up
      )
    end
  end
end
