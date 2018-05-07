class ChangeStagesNullToProjects < ActiveRecord::Migration[5.1]
  def change
    change_column_null :projects, :stages, false
  end
end
