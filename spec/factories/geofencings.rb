FactoryBot.define do
  factory :geofencing do
    location { Faker::Address.city }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    radius { Faker::Number.number(2) }
  end
end
