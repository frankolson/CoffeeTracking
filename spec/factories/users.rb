FactoryGirl.define do
  factory :user do
    first_name       "Test"
    last_name        "Name"
    sequence(:email) { |n| "email#{n}@gmail.com"}
    password         "testpassword"

    trait :confirmed do
      confirmed_at Time.now
    end
  end
end
