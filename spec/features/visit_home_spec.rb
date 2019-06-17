require 'rails_helper'

feature 'visit home' do
  scenario 'successfully' do
    #dados
    #navega
    visit root_path
    #expectativa
    expect(page).to have_content('Welcome to the Timetracking Challenge')
  end
end
