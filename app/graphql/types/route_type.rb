module Types
  class Route < BaseObject
    field :routeStops,
      resolver: Resolvers::Stops
  end
end
