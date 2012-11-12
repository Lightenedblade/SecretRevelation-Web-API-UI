# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mod do
    name "MyString"
    description "MyText"
    forge_compatible false
    sequence(:downloads) { |i| i }
    rating 0
  end
end
