module Types
  class MutationType < Types::BaseObject
    field :createCustomer, mutation: Mutations::CreateCustomer
    field :createLocation, mutation: Mutations::CreateLocation
    field :updateLocation, mutation: Mutations::UpdateLocation
    field :deleteLocation, mutation: Mutations::DeleteLocation
  end
end
