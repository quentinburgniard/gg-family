class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :stages
      t.references :workflow, foreign_key: true
      t.references :travel_companion, foreign_key: true

      t.timestamps
    end
  end
end
