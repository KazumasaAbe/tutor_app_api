class AddReferencesToTeacherStudent < ActiveRecord::Migration[6.0]
  def change
    add_reference :teacher_students, :teacher, foreign_key: true
    add_reference :teacher_students, :student, foreign_key: true
  end
end
