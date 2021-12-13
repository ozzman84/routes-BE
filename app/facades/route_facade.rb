class RouteFacade
  class << self
    def sand_box(args)
      if args[:driver]
        stops = Location.route_by_day_and_driver(args[:driver], args[:pickupDay])

        addresses = full_address(stops, args[:driver])

        route_data = MapquestService.get_route(addresses)
        location_data = route_data[:route][:locations]

        Route.stops(location_data)
      elsif args[:customer]
        customer = Customer.find(args[:customer])
        driver = customer.driver.id

        stops = Location.route_by_day_and_driver(driver, args[:pickupDay])

        addresses = full_address(stops, driver)

        route_data = MapquestService.get_route(addresses)
        location_data = route_data[:route][:locations]

        Route.stops(location_data)
      end
    end

    def create_route(driver, pickup_day)
      stops = Location.route_by_day_and_driver(driver, pickup_day)

      addresses = full_address(stops, driver)

      route_data = MapquestService.get_route(addresses)
      location_data = route_data[:route][:locations]

      Route.stops(location_data)
    end

    private

    def full_address(stops, driver)
      route_addresses = []
      stops.each do |stop|
        route_addresses << "#{stop.street_address}, #{stop.city}, #{stop.state}"
      end
      route_addresses.push(home_base(driver))
      route_addresses.unshift(home_base(driver))
      route_addresses
    end

    def home_base(driver)
      driver = Driver.find(driver)
      company = driver.waste_company
      "#{company.street_address}, #{company.city}, #{company.state}"
    end
  end
end
