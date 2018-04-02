class CreateWorkflowStages < ActiveRecord::Migration[5.1]
  def change
    create_table :workflow_stages do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
