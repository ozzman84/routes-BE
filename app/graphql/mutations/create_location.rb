module Mutations
  class CreateLocation < BaseMutation
    # arguments passed to the `resolve` method
    argument :street_address, String, required: true
    argument :city, String, required: true
    argument :state, String, required: true
    argument :pickup_day, String, required: true
    argument :number_of_bins, Integer, required: true
    argument :picked_up, Boolean, required: true
    argument :customer_id, Integer, required: true

    type Types::LocationType

    def resolve(**args)
      Location.create!(
        street_address: args[:street_address],
        city: args[:city],
        state: args[:state],
        pickup_day: args[:pickup_day],
        number_of_bins: args[:number_of_bins],
        picked_up: args[:picked_up],
        customer_id: args[:customer_id]
      )
    end
  end
end
