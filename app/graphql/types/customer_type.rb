module Types
  class CustomerType
    field :id, ID, null: false
    field :name, String, null: false
    field :number_of_bins, Integer, null: false
    field :street_address, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :driver_id, Integer, null: false
    field :picked_up, Boolean, null: false
  end
end
