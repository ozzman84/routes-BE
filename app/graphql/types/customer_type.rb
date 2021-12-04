module Types
  class CustomerType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :driver_id, Integer, null: false
  end
end
