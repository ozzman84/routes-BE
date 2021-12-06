class Route
  attr_reader :stops

  def initialize(info)
    @stops = create_route_stops(info)
  end

  private
  def create_route_stops(info)
    info.map do |location|
      RouteStop.new(location)
    end
  end
end
