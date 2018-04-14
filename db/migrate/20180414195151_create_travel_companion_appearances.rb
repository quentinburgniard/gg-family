class CreateTravelCompanionAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_companion_appearances do |t|
      t.string :profile_picture
      t.string :welcome_picture

      t.timestamps
    end
  end
end
