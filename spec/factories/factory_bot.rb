require 'factory_bot'

FactoryBot.define do
  factory :user do
    username { "test_user" }
    email { "mattjohnplummer@gmail.com" }
    password { "password123" }
  end
end
