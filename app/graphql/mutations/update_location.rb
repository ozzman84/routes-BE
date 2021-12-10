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
    field :success, Boolean, null: false
    field :errors, [String], null: false
    field :location, Types::LocationType, null: true

    type Types::LocationType

    def resolve(id:, **args)
      location = Location.find(id)
      # location.update(args)

      if location.update(args)
        # binding.pry
        {
          # success: true,
          # errors: [],
          location: location
        }
      else
        {
          success: false
          # location: location
        }
      end
      # location
    end
  end
end
