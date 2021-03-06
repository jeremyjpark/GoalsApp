require 'spec_helper'
feature "the signup process" do
  it "has a new user page" do
    visit '/users/new'
    expect(page).to have_content('Sign Up')
    expect(page).to have_content('Username')
    expect(page).to have_content('Password')
  end

  feature "signing up a user" do
    it "shows username on the homepage after signup" do
      visit '/users/new'
      fill_in('Username', with: "test user")
      fill_in('Password', with: "123456")
      click_button('Sign Up')
    end

    it "shows username on homepage" do
      visit '/users/new'
      fill_in('Username', with: "test user")
      fill_in('Password', with: "123456")
      click_button('Sign Up')
      visit '/'
      expect(page).to have_content "test user"
    end
  end

end

feature "logging out" do
  it "begins with logged out state" do
    visit '/'
    expect(page).not_to have_content "test user"
    expect(page).to have_content "Sign In"
    expect(page).to have_content "Sign Up"
  end

  it "doesn't show username on the homepage after logout" do
    visit new_user_url
    fill_in('Username', with: "test user")
    fill_in('Password', with: "123456")
    click_button('Sign Up')
    visit '/'

    click_button('Sign Out')
    expect(page).not_to have_content "test user"
  end
end

feature "logging in" do
  it "shows username on the homepage after login" do
    visit new_user_url
    fill_in('Username', with: "test user")
    fill_in('Password', with: "123456")
    click_button('Sign Up')
    visit '/'

    click_button('Sign Out')

    visit new_sessions_url
    expect(page).to have_content "Sign In"

    fill_in('Username', with: "test user")
    fill_in('Password', with: "123456")
    click_button('Sign In')

    visit '/'
    expect(page).to have_content "test user"
  end
end
