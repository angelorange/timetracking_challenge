FactoryBot.define do
  factory :time_tracking do
    comment { Faker::Lorem.sentence(3) }
    owner { Faker::Name.name }
    geofencing
  end
end
