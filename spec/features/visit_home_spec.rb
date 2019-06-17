require 'rails_helper'

feature 'visit home' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content('Welcome to the Timetracking Challenge')
  end
end
