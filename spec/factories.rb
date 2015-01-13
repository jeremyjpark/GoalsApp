FactoryGirl.define do
  factory :user do
    username { Faker::Name.first_name }
    password { Faker::Lorem.word }
  end

  factory :goal do
    title { "#{Faker::Hacker.verb} the #{Faker::Hacker.adjective} #{Faker::Hacker.noun}" }
    body { Faker::Hacker.say_something_smart }
    # getting the user_id?

  end
end
