require 'rails_helper'
require 'capybara/rails'

describe 'Request feature' do
  xit 'application and role drop down' do
    visit('/')
    expect(page).to have_content('Application/Org Access Request form')
    expect(page).to have_link('New Request')
  end
end
