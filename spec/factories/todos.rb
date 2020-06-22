FactoryBot.define do
  factory :todo do
    title         {FFaker::Lorem.word}
    description   {FFaker::Lorem.word}
    user
  end
end
