require 'rails_helper'

RSpec.describe TeacherStudent, type: :model do
  it 'teacher_idがなければ無効になること' do
    @TeacherStudent = TeacherStudent.new( 
      teacher_id: nil
    )
    expect(@TeacherStudent.valid?).to eq(false)
  end
  it 'student_idがなければ無効になること' do
    @TeacherStudent = TeacherStudent.new( 
      student_id: nil
    )
    expect(@TeacherStudent.valid?).to eq(false)
  end
end