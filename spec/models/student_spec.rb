require 'rails_helper'

RSpec.describe Student, type: :model do
  it 'titleがなければ無効になること' do
    @Student = Student.new( 
      teacher_id: nil
    )
    expect(@Student.valid?).to eq(false)
  end
  it 'nameがなければ無効になること' do
    @Student = Student.new( 
      name: nil
    )
    expect(@Student.valid?).to eq(false)
  end
end
