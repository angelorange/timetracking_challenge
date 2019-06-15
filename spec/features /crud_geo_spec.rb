require 'rails_helper'

feature 'create a geofencing' do
  scenario 'successfully' do
    geo = build(:geofencing)

    visit new_geofencing_path
    fill_in 'Location', with: geo.location
    fill_in 'Latitude', with: geo.latitude
    fill_in 'Longitude', with: geo.longitude
    fill_in 'Radius', with: geo.radius
    click_on 'Create'

    expect(page).to have_content('Geofencing create successfuly')
    expect(page).to have_content(geo.location)
    expect(page).to have_content(geo.latitude)
    expect(page).to have_content(geo.longitude)
    expect(page).to have_content(geo.radius)
  end
end
