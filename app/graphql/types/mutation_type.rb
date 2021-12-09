module Types
  class MutationType < Types::BaseObject
    field :createCustomer, mutation: Mutations::CreateCustomer
  end
end
