module Resolvers
  class StopsResolver < GraphQL::Schema::Resolver
    type [Types::RouteStopType], null: false

    argument :driver, Integer, required: true
    argument :pickupDay, String, required: true

    def resolve(driver:, pickupDay:)
      # call your application logic here:
      route = RouteFacade.create_route(driver, pickupDay)

      # return the list of items
      route.stops
    end
  end
end
