class AddBulidingNumberToWasteCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :waste_companies, :building_number, :string
  end
end
