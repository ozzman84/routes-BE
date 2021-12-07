class MapquestService
  class << self
    def get_route(addresses)
      #takes an array for addresses with starting location first/endling location last (so proably waste manage site *2)
      response = conn.get("/directions/v2/optimizedroute?json={'locations':#{addresses}}")
      parse_json(response)
    end

    def conn
      Faraday.new('http://www.mapquestapi.com') do |f|
        f.params['key'] = ENV['mapquest_key']
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
