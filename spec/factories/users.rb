FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'Supersecret' }
  end
end
