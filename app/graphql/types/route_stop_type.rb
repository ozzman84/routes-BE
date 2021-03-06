module Types
  class RouteStopType < BaseObject
    field :name, String, null: false
    field :street_address, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :disposal_time, Integer, null: false
    field :latitude, Float, null: false
    field :longitude, Float, null: false
    field :location_id, Integer, null: true
    field :building_number, String, null: false
    field :customer_id, Integer, null: true
  end
end
