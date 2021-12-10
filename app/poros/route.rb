class Route
  def self.stops(info)
    info.map do |location|
      RouteStop.new(location)
    end
  end
end
