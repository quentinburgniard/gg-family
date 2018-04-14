class CreateTravelCompanions < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_companions do |t|
      t.string :name
      t.text :description
      t.references :travel_companion_appearance
      t.integer :expertise
      t.integer :patience
      t.integer :perfectionism
      t.integer :ambition
      t.integer :talkativeness

      t.timestamps
    end
  end
end
