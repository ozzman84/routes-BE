namespace :update_locations do
  desc "reset picked_up boolean on all locations to false once each week"
  task reset_picked_up: :environment do
    locations = Location.all
    locations.each do |location|
      location.picked_up = false
    end
    puts "updated"
  end

end
