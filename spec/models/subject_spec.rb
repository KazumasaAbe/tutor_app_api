require 'rails_helper'

RSpec.describe Subject, type: :model do
  it 'subjectがなければ無効になること' do
    @Subject = Subject.new( 
      subject: nil
    )
    expect(@Subject.valid?).to eq(false)
  end
  it 'teacher_idがなければ無効になること' do
    @Subject = Subject.new( 
      teacher_id: nil
    )
    expect(@Subject.valid?).to eq(false)
  end
end