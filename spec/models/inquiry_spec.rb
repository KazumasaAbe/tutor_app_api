require 'rails_helper'

RSpec.describe Inquiry, type: :model do
  it "名前・メールアドレス・問い合わせ内容があれば有効であること" do 
    @Inquiry = Inquiry.new( 
      name: "test",
      email: "test@example.com", 
      content: "test" 
    )
    expect(@Inquiry).to be_valid
  end
  it '名前がなければ無効になること' do
    @Inquiry = Inquiry.new( 
      name: nil
    )
    expect(@Inquiry.valid?).to eq(false)
  end
  it 'メールアドレスがなければ無効になること' do
    @Inquiry = Inquiry.new( 
      email: nil
    )
    expect(@Inquiry.valid?).to eq(false)
  end
  it 'お問い合わせ内容がなければ無効になること' do
    @Inquiry = Inquiry.new( 
      content: nil
    )
    expect(@Inquiry.valid?).to eq(false)
  end
end