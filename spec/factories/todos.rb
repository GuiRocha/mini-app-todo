FactoryBot.define do
  factory :todo do
    title         {FFaker::String}
    description   {FFaker::String}
    user
  end
end
