def sign_up
  visit("/users/sign_up")
  attach_file 'user_avatar', 'spec/files/avatar.png'
  fill_in 'Email', with: 'test@example.com' 
  fill_in 'Username', with: 'testuser'
  select 'Neutral', from: 'Alignment'
  fill_in 'Address', with: 'London, UK'
  fill_in "Bio", with: 'testing profile'
  check "user_dm"
  fill_in 'Password', with: 'password123' 
  fill_in 'Password confirmation', with: 'password123'
  check "user_terms"
  click_button "Sign up"
end

def sign_up_without_avatar
  visit("/users/sign_up")
  fill_in 'Email', with: 'test@example.com' 
  fill_in 'Username', with: 'testuser'
  select 'Neutral', from: 'Alignment'
  fill_in 'Address', with: 'London, UK'
  fill_in "Bio", with: 'testing profile'
  check "user_dm"
  fill_in 'Password', with: 'password123' 
  fill_in 'Password confirmation', with: 'password123'
  check "user_terms"
  click_button "Sign up"
end

def sign_up_2nd_user 
  visit("/users/sign_up")
  fill_in 'Email', with: 'test2@example.com' 
  fill_in 'Username', with: 'testuser2'
  select 'Neutral', from: 'Alignment'
  fill_in 'Address', with: 'London, UK'
  fill_in "Bio", with: 'testing profile'
  check "user_dm"
  fill_in 'Password', with: 'password123' 
  fill_in 'Password confirmation', with: 'password123'
  check "user_terms"
  click_button "Sign up"
end

def log_in
  fill_in 'Email', with: 'test@example.com'
  fill_in 'Password', with: 'password123'
  click_button 'Log in'
end

def create_group
  visit '/groups'
  click_link 'New Group'
  fill_in 'Name', with: 'test group'
  click_button 'Create Group'
end

def enter_group
  visit '/groups'
  click_link 'test group'
end

def send_group_request
  click_link 'Taverns'
  click_link 'test group'
  click_button 'Request'
end

def sign_in
  visit '/'
  fill_in 'Email', with: 'test@example.com' 
  fill_in 'Password', with: 'password123'
  click_button 'Log in'
end

def sign_in_second_user
  visit '/'
  fill_in 'Email', with: 'test2@example.com'
  fill_in 'Password', with: 'password123'
  click_button 'Log in'
end

def accept_group_request
  click_link 'Taverns'
  click_link 'test group'
  click_link 'Accept'
end

def log_out
  visit '/'
  click_link 'Log Out'
end