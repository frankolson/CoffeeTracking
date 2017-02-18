def sign_user_in(user, opts={})
  visit new_user_session_path
  fill_in 'Email', with: user.email
  fill_in 'Password', with: (opts[:password] || user.password)
  click_button 'Sign in'
end

def sign_up(subdomain)
  visit root_path
  click_link 'Create an account'

  fill_in 'First name', with: 'Frank'
  fill_in 'Last name', with: 'Olson'
  fill_in 'Email', with: 'frank@example.com'
  fill_in 'Password', with: 'ye$hallNotHAndshake'
  fill_in 'Password confirmation', with: 'ye$hallNotHAndshake'
  fill_in 'Subdomain', with: subdomain
  click_button 'Create Account'
end
