class RouteFacade
  class << self
    def create_route(driver, pickup_day)
      stops = Location.joins(customer: :driver)
        .where("drivers.id = ?", driver)
        .where("locations.pickup_day = ?", pickup_day)

      addresses = stops.map do |stop|
        "#{stop.street_address}, #{stop.city}, #{stop.state}"
      end
      route_data = MapquestService.get_route(addresses)
      location_data = route_data[:route][:locations]
      Route.new(location_data)
    end
  end
end
