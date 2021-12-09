module Types
  class LocationType < BaseObject
    field :id, ID, null: false
    field :numberOfBins, Integer, null: false
    field :streetAddress, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :pickupDay, String, null: false
    field :pickedUp, Boolean, null: false
  end
end
