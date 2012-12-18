# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :thing do
    name "MyString"
    user nil
    image_url "MyString"
    description "MyText"
  end
end
