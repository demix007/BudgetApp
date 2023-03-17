require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    @user = User.create!(name: 'Ayodeji Abidemi', id: 1, email: 'abidemi@example.com', password:123456)
  end

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with any empty attribute' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
