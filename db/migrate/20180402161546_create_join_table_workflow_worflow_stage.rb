class CreateJoinTableWorkflowWorflowStage < ActiveRecord::Migration[5.1]
  def change
    create_join_table :workflows, :workflow_stages do |t|
      t.index [:workflow_id, :workflow_stage_id]
    end
  end
end
