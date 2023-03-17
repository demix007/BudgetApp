require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user1 = User.create! name: 'Ayodeji Abidemi', email: 'abidemi@example.com', password:123456
    @group = @user1.groups.create! name: 'Fastfood', icon: 'icon'
  end

  it 'name should be present' do
    @group.name = nil
    expect(@group).to_not be_valid
  end

  it 'name should have valid value' do
    expect(@user1.name).to eql 'Ayodeji Abidemi'
  end

  it 'subject should be valid' do
    expect(@group).to be_valid
  end

  it 'icon should be present' do
    @group.icon = nil
    expect(@group).to_not be_valid
  end

  it 'icon should have a correct value' do
    expect(@group.icon).to eql 'icon'
  end
end
