require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it 'nameがなければ無効になること' do
    @Teacher = Teacher.new( 
      name: nil
    )
    expect(@Teacher.valid?).to eq(false)
  end
end