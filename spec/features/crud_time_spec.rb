require 'rails_helper'

feature 'create a time tracking' do
  scenario 'successfully' do
    geo = create(:geofencing)
    time = build(:time_tracking, geofencing: geo)

    visit new_time_tracking_path
    fill_in 'Owner', with: time.owner
    fill_in 'Comment', with: time.comment
    select geo.location, from: time[geo.id]
    click_on 'Submit'

    expect(page).to have_content('Check in create successfully')
    expect(page).to have_content(time.owner)
    expect(page).to have_content(time.comment)
    expect(page).to have_content(time.created_at)
    expect(page).to have_content(time.geofencing.location)
    expect(page).to have_content(time.geofencing.latitude)
    expect(page).to have_content(time.geofencing.longitude)
  end
end
