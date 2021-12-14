module Types
  class QueryType < Types::BaseObject
    field :routeRequest, resolver: Resolvers::StopsResolver
    field :all_locations, [LocationType], null: false
    field :all_customers, [CustomerType], null: false

    def all_locations
      Location.all
    end

    def all_customers
      Customer.all
    end
  end
end
