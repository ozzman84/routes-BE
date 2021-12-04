module Types
  class MutationType < Types::BaseObject
    field :createCustomer, mutation: MutationType::CreateCustomer
  end
end
