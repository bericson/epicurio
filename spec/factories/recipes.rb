# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe do
    name "MyString"
    ingredients "MyString"
    servings 1
    prep_time "2012-11-29 17:17:32"
    cook_time "2012-11-29 17:17:32"
    author "MyString"
    preparation "MyString"
  end
end
