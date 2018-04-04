class ChangePositionToWorkflowStages < ActiveRecord::Migration[5.1]
  def change
    change_column_default :workflow_stages, :position, 0
  end
end
