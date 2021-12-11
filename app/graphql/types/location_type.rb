module Types
  class LocationType < BaseObject
    field :id, ID, null: false
    field :number_of_bins, Integer, null: false
    field :street_address, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :pickup_day, String, null: false
    field :picked_up, Boolean, null: false
    field :customer_id, Integer, null: false
  end
end
