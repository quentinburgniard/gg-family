class AddActionRequiredToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :action_required, :integer, after: :stages, default: 0, null: false
  end
end
