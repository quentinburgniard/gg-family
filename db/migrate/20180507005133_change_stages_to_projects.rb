class ChangeStagesToProjects < ActiveRecord::Migration[5.1]
  def change
    change_column_default :projects, :stages, 0
  end
end
