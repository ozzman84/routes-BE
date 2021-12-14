class AddBuildingNumberToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :building_number, :string
  end
end
