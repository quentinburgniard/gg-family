class ChangeDescriptionToWorkflowStages < ActiveRecord::Migration[5.1]
  def change
    rename_column :workflow_stages, :description, :default_description
  end
end
