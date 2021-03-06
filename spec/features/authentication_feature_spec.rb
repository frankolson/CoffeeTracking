require 'rails_helper'

describe 'user authentication' do
  let(:user) {build(:user, :confirmed)}
  let(:account) {create(:account, owner: user)}

  it 'allows signin with valid credentials' do
    sign_user_in(account.owner)
    expect(page).to have_content('Signed in successfully')
  end

  it 'does not allow signin with invalid credentials' do
    sign_user_in(account.owner, password: 'wrong_password')
    expect(page).to have_content('Invalid Email or password')
  end

  it 'allows user to sign out' do
    sign_user_in(account.owner)

    click_link 'Sign out'
    expect(page).to have_content('Signed out successfully')
  end
end
