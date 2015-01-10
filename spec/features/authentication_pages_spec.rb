require 'rails_helper'

feature "Authentication" do

	subject { page }

	scenario "signin page" do

        
		visit "sessions/new"
end
end
###############################################
feature "with invalid informations" do
	scenario "with invalid informations" do
	visit "sessions/new"
	click_button "Sign in" 

               expect(page).to have_title('Sign in')
				#should have_selector( 'title', text: 'Sign in') 
				expect(page).to have_selector('div.alert.alert-error', text: 'Invalid')
end
end
			  feature "after visiting another page" do
			  	scenario "with invalid informations" do
	             visit "sessions/new"

                   click_link "Home"
                   should_not have_selector('div.alert.alert-error') 
                  end
              end
			
		
