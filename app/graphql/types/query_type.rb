module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :routeRequest, [RouteType], null: false do
      argument :driver, Integer, required: true
      argument :pickup_day, String, required: true
    end

    def routeRequest(driver:, pickup_day:)
      RouteFacade.create_route(driver, pickup_day)
    end
  end
end
