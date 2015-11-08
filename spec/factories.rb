FactoryGirl.define do
  factory :user do
    email               { Faker::Internet.email }
    sequence(:username) { |n| "username#{n}"}
  end


  factory :auction do
    title { Faker::Lorem.words(10).join(' ') }
    description { Faker::Lorem.paragraphs(4).join(' ') }
    starting_price { rand(1..50000) }

    factory :user_auction do
      association :auctionable, factory: :user
    end
  end

end
