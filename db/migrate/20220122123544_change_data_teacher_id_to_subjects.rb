class ChangeDataTeacherIdToSubjects < ActiveRecord::Migration[6.0]
  def change
    change_column :subjects, :teacher_id, :integer
  end
end
