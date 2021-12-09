class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :pickup_day
      t.integer :number_of_bins
      t.boolean :picked_up
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
