class Route
  def stops(info)
    info.map do |location|
      RouteStop.new(location)
    end
  end
end
