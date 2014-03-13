require 'spec_helper'

describe User, type: :feature do 
	
	context "New User" do 


		it "Tests redirection to signup page" do
    		visit '/users/new'
      		page.should have_content "You need to sign in or sign up before continuing."
   		end

   		it "Tests redirection to signup page" do
    		visit '/post/new'
      		page.should have_content "You need to sign in or sign up before continuing."
   		end

	end 
end  