# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list_item do
    title "MyString"
    description "MyText"
    list nil
  end
end
