
require 'rails_helper'

describe "StaticPages" do
  subject { page }

let(:base_title) { "Ruby on Rails Tutorial Sample App" }

include Capybara::DSL
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      
    end 
  end 

  

  describe "Home page" do
    before { visit root_path }
it { should have_selector('h1', text: 'StockWhisperer') }
it { should have_selector('title', text: full_title('')) }
it { should_not have_selector 'title', text: '| Home' }
end

describe "Help page" do
before { visit help_path }
it { should have_selector('h1', text: 'Help') }
it { should have_selector('title', text: full_title('Help')) }
end

describe "About page" do
before { visit about_path }
it { should have_selector('h1', text: 'About') }
it { should have_selector('title', text: full_title('About Us')) }
end

describe "Contact page" do
before { visit contact_path }
it { should have_selector('h1', text: 'Contact') }
it { should have_selector('title', text: full_title('Contact')) }
end
end