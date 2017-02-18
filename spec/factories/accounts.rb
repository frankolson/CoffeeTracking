FactoryGirl.define do
  sequence(:subdomain) { |n| "subdomain#{n}"}

  factory :account do
    sequence(:subdomain) { |n| "subdomain#{n}"}
    association :owner, factory: :user
  end
end
