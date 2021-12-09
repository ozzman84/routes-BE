module Mutations
  class CreateCustomer < BaseMutation
    # arguments passed to the `resolve` method
    argument :name, String, required: true
    argument :driver_id, Integer, required: true

    # return type from the mutation
    type Types::CustomerType

    def resolve(name: nil, driver_id: nil)
      Customer.create!(
        name: name,
        driver_id: driver_id,
      )
    end
  end
end
