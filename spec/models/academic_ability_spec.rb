require 'rails_helper'

RSpec.describe AcademicAbility, type: :model do
  it 'national_languageがなければ無効になること' do
    @AcademicAbility = AcademicAbility.new( 
      national_language: nil
    )
    expect(@AcademicAbility.valid?).to eq(false)
  end
  it 'arithmeticがなければ無効になること' do
    @AcademicAbility = AcademicAbility.new( 
      arithmetic: nil
    )
    expect(@AcademicAbility.valid?).to eq(false)
  end
  it 'scienceがなければ無効になること' do
    @AcademicAbility = AcademicAbility.new( 
      science: nil
    )
    expect(@AcademicAbility.valid?).to eq(false)
  end
  it 'englishがなければ無効になること' do
    @AcademicAbility = AcademicAbility.new( 
      english: nil
    )
    expect(@AcademicAbility.valid?).to eq(false)
  end
  it 'societyがなければ無効になること' do
    @AcademicAbility = AcademicAbility.new( 
      society: nil
    )
    expect(@AcademicAbility.valid?).to eq(false)
  end
  it 'implementation_monthがなければ無効になること' do
    @AcademicAbility = AcademicAbility.new( 
      implementation_month: nil
    )
    expect(@AcademicAbility.valid?).to eq(false)
  end
  it 'student_idがなければ無効になること' do
    @AcademicAbility = AcademicAbility.new( 
      student_id: nil
    )
    expect(@AcademicAbility.valid?).to eq(false)
  end
end
