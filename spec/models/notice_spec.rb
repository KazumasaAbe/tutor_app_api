require 'rails_helper'

RSpec.describe Notice, type: :model do
  it "title,textがあれば有効であること" do 
    @Notice = Notice.new( 
      title: "test",
      text: "test" 
    )
    expect(@Notice).to be_valid
  end
  it 'titleがなければ無効になること' do
    @Notice = Notice.new( 
      title: nil
    )
    expect(@Notice.valid?).to eq(false)
  end
  it 'textがなければ無効になること' do
    @Notice = Notice.new( 
      text: nil
    )
    expect(@Notice.valid?).to eq(false)
  end
end
