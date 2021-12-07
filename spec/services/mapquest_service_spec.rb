require 'rails_helper'

RSpec.describe MapquestService do
  xit 'gets the optimized route for given locations' do
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
