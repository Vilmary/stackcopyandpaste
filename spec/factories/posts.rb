FactoryGirl.define do
  factory :post do
    title { Faker::Name.name }
    author { Faker::Name.name }
    category { Faker::Name.name }
    
    description { Faker::Lorem.sentence(3, true, 4) }
    
  end
end