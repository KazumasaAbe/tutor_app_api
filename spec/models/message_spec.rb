require 'rails_helper'

RSpec.describe Message, type: :model do
  it 'speakerがなければ無効になること' do
    @Message = Message.new( 
      speaker: nil
    )
    expect(@Message.valid?).to eq(false)
  end
  it 'contentがなければ無効になること' do
    @Message = Message.new( 
      content: nil
    )
    expect(@Message.valid?).to eq(false)
  end
  it 'teacher_idがなければ無効になること' do
    @Message = Message.new( 
      teacher_id: nil
    )
    expect(@Message.valid?).to eq(false)
  end
  it 'student_idがなければ無効になること' do
    @Message = Message.new( 
      student_id: nil
    )
    expect(@Message.valid?).to eq(false)
  end
end
