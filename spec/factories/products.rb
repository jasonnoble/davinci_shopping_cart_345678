# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { "Purchasing #{name} will make you famous"}
    image_url { name.gsub(/\s+/, '_') }
    price { rand(100.00) }
  end
end
