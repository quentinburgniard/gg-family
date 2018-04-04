class WorkflowStage < ApplicationRecord
  has_and_belongs_to_many :workflows
  default_scope { order(:position) }
end
