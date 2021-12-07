module Mutations
  class UpdateLocation < BaseMutation
    argument :street_address, String, required: true
    argument :city, String, required: true
    argument :state, String, required: true
    argument :pickup_day, String, required: true
    argument :number_of_bins, Integer, required: true
    argument :picked_up, Boolean, required: true
    argument :customer_id, Bigint, required: true

    type Types::LocationType

    def resolve(street_address: nil, city: nil, state: nil, picked_up: nil, number_of_bins: nil, pickup_day: nil, customer_id: nil)
      Location.update!(
        street_address: street_address,
        city: city,
        state: state,
        pickup_day: pickup_day,
        number_of_bins: number_of_bins,
        picked_up: picked_up,
        customer_id: customer_id
      )
    end
  end
end
