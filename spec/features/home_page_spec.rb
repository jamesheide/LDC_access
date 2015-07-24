require 'rails_helper'
require 'capybara/rails'

describe 'Visit Home Page' do
  it 'Has header text and new request button.' do
    visit('/')
    expect(page).to have_content('Application/Org Access Request form')
    expect(page).to have_link('New Request')
  end
end