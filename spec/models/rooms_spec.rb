require 'rails_helper'

RSpec.describe Room, type: :model do
  it 'teacher_idがなければ無効になること' do
    @Room = Room.new( 
      teacher_id: nil
    )
    expect(@Room.valid?).to eq(false)
  end
  it 'student_idがなければ無効になること' do
    @Room = Room.new( 
      student_id: nil
    )
    expect(@Room.valid?).to eq(false)
  end
end