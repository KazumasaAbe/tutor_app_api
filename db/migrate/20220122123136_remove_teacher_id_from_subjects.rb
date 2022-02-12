class RemoveTeacherIdFromSubjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :subjects, :teacher_id, :integer
  end
end
