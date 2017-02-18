require 'rails_helper'

describe 'account creation' do
  let(:subdomain) { FactoryGirl.generate(:subdomain) }
  before do
    sign_up(subdomain)
  end

  it 'allows user to create account' do
    expect(Account.all.count).to eq(1)
  end

  it 'creates a user with an account' do
    expect(User.all.count).to eq(1)
  end
end
