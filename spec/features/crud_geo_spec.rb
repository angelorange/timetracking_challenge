require 'rails_helper'

feature 'create a geofencing' do
  scenario 'successfully' do
    geo = build(:geofencing)

    visit new_geofencing_path
    fill_in 'Location', with: geo.location
    fill_in 'Latitude', with: geo.latitude
    fill_in 'Longitude', with: geo.longitude
    fill_in 'Radius', with: geo.radius
    click_on 'Submit'

    expect(page).to have_content('Geofencing create successfully')
    expect(page).to have_content(geo.location)
    expect(page).to have_content(geo.latitude)
    expect(page).to have_content(geo.longitude)
    expect(page).to have_content(geo.radius)
  end

  scenario 'and try to create with missing data' do
    visit new_geofencing_path
    fill_in 'Location', with: ' '
    click_on 'Submit'

    expect(page).to have_content("Location can't be blank")
  end

  scenario 'and UPDATE date' do
    geo = create(:geofencing)
    neogeo = build(:geofencing, location: 'Paulista')

    visit edit_geofencing_path(geo.id)
    fill_in 'Location', with: neogeo.location
    click_on 'Submit'

    expect(page).to have_content('Geofecing update successfully')
    expect(page).to have_content('Paulista')
    expect(page).to have_content(geo.latitude)
    expect(page).to have_content(geo.longitude)
    expect(page).to have_content(geo.radius)
  end

  scenario 'and DELETE the data from db' do
    geo = create(:geofencing)

    visit geofencing_path(geo.id)
    click_on 'Delete'

    expect(page).to have_content('Deleted')
  end
end
