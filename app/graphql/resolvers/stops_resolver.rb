module Resolvers
  class StopsResolver < GraphQL::Schema::Resolver
    type [Types::RouteStopType], null: false

    argument :driver, Integer, required: true
    argument :pickupDay, String, required: true

    def resolve(**args)
      RouteFacade.create_route(args)
    end
  end
end
