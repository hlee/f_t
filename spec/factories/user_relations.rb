# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_relation do
    user_id 1
    friend_id 1
  end
end
