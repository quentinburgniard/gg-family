class AddPositionToWorkflowStages < ActiveRecord::Migration[5.1]
  def change
    add_column :workflow_stages, :position, :integer
  end
end
