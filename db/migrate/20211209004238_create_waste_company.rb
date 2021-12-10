class CreateWasteCompany < ActiveRecord::Migration[5.2]
  def change
    create_table :waste_companies do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.timestamps
    end
  end
end
