class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :number_of_bins
      t.string :street_address
      t.string :city
      t.string :state
      t.string :pickup_day
      t.references :driver, foreign_key: true

      t.timestamps
    end
  end
end
