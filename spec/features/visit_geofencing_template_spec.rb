require 'rails_helper'

feature 'Visit geofencing templates: ' do
  scenario 'index, successfully' do
    geo = create(:geofencing)
    geo_two = create(:geofencing)
    geo_three = create(:geofencing)

    visit geofencings_path

    expect(page).to have_content(geo.location)
    expect(page).to have_content(geo_two.location)
    expect(page).to have_content(geo_three.location)
  end

  scenario 'and show, successfully' do
    geo = create(:geofencing)

    visit geofencings_path
    click_on geo.location

    expect(page).to have_content(geo.location)
    expect(page).to have_content(geo.latitude)
    expect(page).to have_content(geo.longitude)
    expect(page).to have_content(geo.radius)
  end
end
