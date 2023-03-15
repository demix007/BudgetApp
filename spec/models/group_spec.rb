require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user1 = User.create! name: 'Ayodeji Abidemi'
    @group = @user1.groups.create! name: 'Fastfood', icon: 'icon'
  end
end