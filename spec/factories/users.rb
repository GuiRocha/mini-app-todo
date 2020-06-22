FactoryBot.define do
  factory :user do
    sequence(:email) { FFaker::Internet.email}
    password               {FFaker::Internet.password}
    password_confirmation  {password}
  end
end
