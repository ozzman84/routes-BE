class RouteFacade
  class << self
    def create_route(args)
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

    private

    def full_address(stops, driver)
      route_addresses = []
      stops.each do |stop|
        if stop.building_number.nil?
          route_addresses << "#{stop.street_address}, #{stop.city}, #{stop.state}"
        else
          route_addresses << "#{stop.street_address}, #{stop.building_number}, #{stop.city}, #{stop.state}"
        end
      end
      route_addresses.push(home_base(driver))
      route_addresses.unshift(home_base(driver))
      route_addresses
    end

    def home_base(driver)
      driver = Driver.find(driver)
      company = driver.waste_company
      if company.building_number.nil?
        "#{company.street_address}, #{company.city}, #{company.state}"
      else
        "#{company.street_address}, #{company.building_number}, #{company.city}, #{company.state}"
      end
    end
  end
end
