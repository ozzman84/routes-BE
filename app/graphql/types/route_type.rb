module Types
  class RouteType < BaseObject
    field :id, ID, null: false
    field :route, [String], null: false

  end
end
