class ChangeDataToTeacherStudent < ActiveRecord::Migration[6.0]
  def change
    change_column :teacher_students, :teacher_id, :integer
    change_column :teacher_students, :student_id, :integer
  end
end
