class AddWasteCompanyToDrivers < ActiveRecord::Migration[5.2]
  def change
    add_reference :drivers, :waste_company, foreign_key: true
  end
end
