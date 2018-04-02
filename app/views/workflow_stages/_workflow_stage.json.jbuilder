json.extract! workflow_stage, :id, :name, :description, :created_at, :updated_at
json.url workflow_stage_url(workflow_stage, format: :json)
