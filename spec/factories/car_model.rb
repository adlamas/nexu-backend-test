FactoryBot.define do
  factory :car_model do
    name { Faker::Company.name }
    association :brand
  end
end
