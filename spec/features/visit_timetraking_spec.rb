require 'rails_helper'

feature 'Visit time tracking templates: ' do
  scenario 'index, successfully' do
    geo = create(:geofencing)
    time = create(:time_tracking, geofencing: geo)
    time_two = create(:time_tracking, geofencing: geo)
    time_three = create(:time_tracking, geofencing: geo)

    visit time_trackings_path

    expect(page).to have_content(time.id)
    expect(page).to have_content(time_two.id)
    expect(page).to have_content(time_three.id)
  end

  scenario 'and show, successfully' do
    geo = create(:geofencing)
    time = create(:time_tracking, geofencing: geo)

    visit time_trackings_path
    click_on time.id

    expect(page).to have_content(time.id)
    expect(page).to have_content(time.owner)
    expect(page).to have_content(time.comment)
    expect(page).to have_content(time.geofencing.location)
    expect(page).to have_content(time.geofencing.latitude)
    expect(page).to have_content(time.geofencing.longitude)
    expect(page).to have_content(time.created_at)
  end
end
