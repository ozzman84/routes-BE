require 'rails_helper'

RSpec.describe MapquestService do
  it 'gets the optimized route for given locations' do
    stub_request(:get, "http://www.mapquestapi.com/directions/v2/optimizedroute?json=%7B'locations':%5B%228242%20George%20Early%20Rd,%20Centerville,%20IN%2047330%22,%20%22706%20Poplar%20Avenue,%20Centerville,%20IN%2047330%22,%20%22203%20McMinn%20Rd,%20Centerville,%20IN%2047330%22,%20%229021%20College%20Corner%20Rd,%20Greens%20Fork%20IN,%2047345%22%5D%7D&key=9inJSAdkW6jXoS91aivivVfg83dGdAYF").to_return(body: File.read(File.join('spec', 'fixtures', 'mapquest_service.json')))
    locations = ["8242 George Early Rd, Centerville, IN 47330", "706 Poplar Avenue, Centerville, IN 47330", "203 McMinn Rd, Centerville, IN 47330", "9021 College Corner Rd, Greens Fork IN, 47345"]
    response = MapquestService.get_route(locations)

    expect(response).to be_a(Hash)
    expect(response).to have_key(:route)

    expect(response[:route]).to have_key(:boundingBox)
    expect(response[:route]).to have_key(:formattedTime)
    expect(response[:route]).to have_key(:legs)

    expect(response[:route][:legs].first).to have_key(:formattedTime)
  end
end
