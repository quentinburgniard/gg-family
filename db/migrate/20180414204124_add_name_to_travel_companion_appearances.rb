class AddNameToTravelCompanionAppearances < ActiveRecord::Migration[5.1]
  def change
    add_column :travel_companion_appearances, :name, :string, after: :travel_companion_appearances_id
  end
end
