require 'rails_helper'


feature "guest user creates user an account" do
  # scenario "successfully creates a new user account" do
  #   visit "users/new"
  #   fill_in "user_first_name", with: "shane"
  # puts 1
  #   click_button "Create User"
  #   expect(current_path).to eq("/messages")
  # end


	# scenario "successfully creates user a new user account" do
 #    visit "users/new"
 #    fill_in "user_first_name", with: "dameon"
 #  puts 2
 #    click_button "Create User"
 #    expect(page).to have_content "CodingDojo Wall"
 #  end

 #  scenario "unsuccessfully creates user a new user account" do
 #    visit "users/new"
 #    fill_in "user_first_name", with: ""
 #  puts 3
 #    click_button "Create User"
 #    expect(current_path).to eq("/users/new")
 #  end


 #  	scenario "unsuccessfully creates user a error message appear" do
 #    visit "users/new"
 #    fill_in "user_first_name", with: ""
 #  puts 4
 #    click_button "Create User"
 #    expect(page).to have_content "Name can't be blank"
 #  end
before(:each) do
    visit "users/new"
    fill_in "user_first_name", with: "dameonfg"

    click_button "Create User"
end

#   it "successfully message creates " do
   
#     fill_in "post_text1", with: "Super message 111"

#     click_button "Add Post"
#     expect(current_path).to eq("/messages")
#   end


# 	scenario "successfully creates 2nd part message" do

#    fill_in "post_text1", with: "Super message 111"
 
#     click_button "Add Post"
#     expect(page).to have_content "Super message 111"
#   end

#   scenario "unsuccessfully creates error message" do
#    
#     fill_in "post_text", with: "dfgdf"
#   puts 3
#     click_button "Add Post"
#     expect(current_path).to eq("/messages")
#   end


#   	scenario "unsuccessfully creates message a error message appear" do
#  
#     fill_in "post_text", with: ""
#   puts 4
#     click_button "Add Post"
#     expect(page).to have_content "P content is too short"
#   end
  	scenario "find logout on message page" do
 

   
    expect(page).to have_content "logout"
  end
  
  	scenario "redirect to logout link to new user page" do
    
 
  click_link "logout"
    # find("a").find().click
    expect(current_path).to eq("/users/new")
  end



end
