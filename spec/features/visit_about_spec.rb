require 'rails_helper'

feature 'visit about' do
  scenario 'successfully' do
    visit root_path
    click_on 'About the project'

    expect(page).to have_current_path(about_path)
  end
end
