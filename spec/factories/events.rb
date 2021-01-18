FactoryBot.define do
  factory :event do
    I18n.locale = 'ja'
    title        { Faker::Lorem.sentence }
    price        { Faker::Number.between(from: 0, to: 999_999) }
    address      { "東京都新宿区" }
    event_date   { Faker::Date.in_date_period }
    opening_time { "20:00" }
    start_time   { "20:00" }
    end_time     { "20:00" }
    genre_id     { 1 }
    area_id      { 1 }
    association :user
  end
end
