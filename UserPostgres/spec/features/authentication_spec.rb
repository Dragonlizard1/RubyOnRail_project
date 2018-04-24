require 'rails_helper'
feature 'authentication' do
  before do
    @user = create(:user)
  end
  feature "user sign-in" do
    # scenario 'visits sign-in page' do
    #   visit '/sessions/new'
    #   expect(page).to have_field('email')
    #   expect(page).to have_field('password')
    # end

    # scenario 'logs in user if email/password combination is valid' do
  
    #   visit root_path

    #   fill_in "email", with: "oscar@gmail.com"
    #   fill_in "password", with: "password"
    #   click_button "login"
    #   expect(current_path).to eq("/users/#{@user.id}")
    #   expect(page).to have_text(@user.name)
    # end
    # scenario 'does not sign in user if email is not found' do
    #   visit root_path
    #   fill_in "email", with: 'wrong email'
    #   click_button "login"

    #   expect(current_path).to eq("/sessions/new")

    #   expect(page).to have_text('Invalid Combination')
    # end    
    # scenario 'does not sign in user if email/password combination is invalid' do
    #   visit root_path
    #   fill_in "email", with: "oscar@gmail.com"
    #   fill_in "password", with:'W password'
    #    click_button "login"
    #   expect(current_path).to eq("/sessions/new")      
    #   expect(page).to have_text('Invalid Combination')
    #  #  expect(current_path).to eq("/users/#{@user.id}")
    # end
  end
  feature "user to log out" do
    before do 
        visit root_path
          fill_in "email", with: "oscar@gmail.com"
      fill_in "password", with:'password'
       click_button "login"
    end

    scenario 'displays "Log Out" button when user is logged on' do
      expect(page).to have_button('Logout')
    end

    scenario 'logs out user and redirects to login page' do
      click_link 'logout'
      expect(current_path).to eq('/sessions/new')
    end
  end
end