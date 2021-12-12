class Location < ApplicationRecord
  belongs_to :customer


  def self.route_by_day_and_driver(driver, pickup_day)
    if Driver.exists?(driver)
      locations = Location.joins(customer: :driver)
        .where("drivers.id = ?", driver)
        .where("locations.pickup_day = ?", pickup_day)
        .where("locations.picked_up = ?", false)
    else
      raise ActiveRecord::RecordNotFound
    end
  end
end
