FactoryGirl.define do
  factory :user do
    email               { Faker::Internet.email }
    sequence(:username) { |n| "username#{n}"}
  end

end
