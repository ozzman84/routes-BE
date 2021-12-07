module Types
  class RouteStopType < BaseObject
    field :name, String, null: false
    field :street_address, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :disposal_time, String, null: false
    field :latitude, String, null: false
    field :longitude, String, null: false
  end
end
