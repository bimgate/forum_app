require 'rails_helper'






	



include Capybara::DSL



RSpec.describe "Sign up" do
	subject { page }

before { visit signup_path }

it { should have_selector('h1', text: 'Sign up') }


end

