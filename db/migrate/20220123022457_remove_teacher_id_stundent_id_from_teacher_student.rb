class RemoveTeacherIdStundentIdFromTeacherStudent < ActiveRecord::Migration[6.0]
  def change
    remove_column :teacher_students, :teacher_id, :integer
    remove_column :teacher_students, :student_id, :integer
  end
end
