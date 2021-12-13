class RouteStop
  attr_reader :name, :location_id, :street_address, :city, :state, :latitude, :longitude, :disposal_time, :building_number, :customer_id

  def initialize(info)
    @name = address_type(info[:street])
    @street_address = get_street(info[:street])
    @building_number = get_building_number(info[:street])
    @city = info[:adminArea5]
    @state = info[:adminArea3]
    @latitude = info[:latLng][:lat]
    @longitude = info[:latLng][:lng]
    @disposal_time = get_disposal_time(info[:street])
    @location_id = get_location_id(info[:street])
    @customer_id = get_location_customer_id(info[:street])
  end

private

  def address_type(street_address)
    street_address = get_street(street_address)
    if Location.exists?(street_address: street_address)
      get_db_location(street_address).customer.name
    else
      WasteCompany.find_by(street_address: street_address).name
    end
  end

  def get_db_location(street_address)
    Location.find_by(street_address: street_address)
  end

  def get_disposal_time(street_address, per_bin = 5)
    if Location.exists?(street_address: street_address)
      get_db_location(street_address).number_of_bins * per_bin
    else
      0
    end
  end

  def get_location_id(street_address)
    if Location.exists?(street_address: street_address)
      get_db_location(street_address).id
    else
      nil
    end
  end

  def get_location_customer_id(street_address)
    if Location.exists?(street_address: street_address)
      get_db_location(street_address).customer.id
    else
      nil
    end
  end

  def get_building_number(street_address)
    street = street_address.split(', ')
    street.last
  end

  def get_street(street_address)
    street = street_address.split(', ')
    street.first
  end
end
