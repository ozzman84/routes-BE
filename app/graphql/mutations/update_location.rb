module Mutations
  class UpdateLocation < BaseMutation
    argument :id, ID, required: true
    argument :street_address, String, required: false
    argument :city, String, required: false
    argument :state, String, required: false
    argument :pickup_day, String, required: false
    argument :number_of_bins, Integer, required: false
    argument :picked_up, Boolean, required: false
    argument :customer_id, Integer, required: false

    type Types::LocationType

    def resolve(id:, **args)
      Location.find(id).tap do |location|
        location.update!(args)
      end
    end
  end
end
