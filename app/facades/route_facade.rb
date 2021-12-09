class RouteFacade
  class << self
    def create_route(driver, pickup_day)
      stops = Location.route_by_day_and_driver(driver, pickup_day)

      addresses = full_address(stops)

      route_data = MapquestService.get_route(addresses)
      location_data = route_data[:route][:locations]

      Route.new(location_data)
    end

    private

    def full_address(stops)
      stops.map do |stop|
        "#{stop.street_address}, #{stop.city}, #{stop.state}"
      end
    end
  end
end
