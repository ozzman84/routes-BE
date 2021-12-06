class RouteStop
  attr_reader :name, :street_address, :city, :state, :latitude, :longitude, :disposal_time

  def initialize(info)
    @name = get_db_location(info[:street]).customer.name
    @street_address = info[:street]
    @city = info[:adminArea5]
    @state = info[:adminArea3]
    @latitude = info[:latLng][:lat]
    @longitude = info[:latLng][:lng]
    @disposal_time = get_disposal_time(info[:street])
  end

private
  def get_db_location(street_address)
    Location.find_by(street_address: street_address)
  end

  def get_disposal_time(street_address)
    get_db_location(street_address).number_of_bins * 5
  end
end
