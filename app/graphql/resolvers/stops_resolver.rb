module Resolvers
  class StopsResolver < GraphQL::Schema::Resolver
    type [Types::RouteStopType], null: false

    argument :driver, Integer, required: true
    argument :pickupDay, String, required: true

    def resolve(driver:, pickupDay:)
      RouteFacade.create_route(driver, pickupDay)
    end
  end
end
