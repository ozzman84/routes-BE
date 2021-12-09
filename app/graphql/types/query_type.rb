module Types
  class QueryType < Types::BaseObject
    field :routeRequest, resolver: Resolvers::StopsResolver
  end
end
