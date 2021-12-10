module Types
  class MutationType < Types::BaseObject
    field :createCustomer, mutation: Mutations::CreateCustomer
    field :updateLocation, mutation: Mutations::UpdateLocation
  end
end
