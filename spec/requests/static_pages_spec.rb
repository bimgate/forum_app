require 'rails_helper'

describe "StaticPages" do

let(:base_title) { "Ruby on Rails Tutorial Sample App" }

include Capybara::DSL
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      
    end 
  end 

  describe "Home page" do

    it "should have the h1 'forum_app'" do
    visit 'static_pages/home'
    page.should have_selector('h1', :text => 'forum_app')
  end 

    it "should have the title 'Home'" do
      visit 'static_pages/home'
       page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App") 

end

    it "should not have a custom page title" do
    visit '/static_pages/home'
    page.should_not have_selector('title', :text => '| Home')
end
end


describe "Help page" do

  it "should have the h1 'Help'" do
    visit 'static_pages/help'
    page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
    visit 'static_pages/help'
    page.should have_selector('title', :text => "#{base_title} | Help")
  end
end

describe "About page" do
  it "should have the h1 'About Us'" do
    visit 'static_pages/about'
    page.should have_selector('h1', :text => 'About Us')
    end

  it "should have the title 'About Us'" do
    visit 'static_pages/about'
    page.should have_selector('title', :text => "#{base_title} | About Us")
  end
end

describe "Contact page" do
  it "should have the h1 'Contact'" do
    visit 'static_pages/contact'
    page.should have_selector('h1', :text => 'Contact')
  end

  it "should have the title 'Contact'" do
    visit 'static_pages/contact'
    page.should have_selector('title', :text => "#{base_title} | Contact")
  end
end

end


