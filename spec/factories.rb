FactoryGirl.define do
  factory :category do
    name "ooga"
    end

  factory :sub_category do
    category_id 123
    name "ooga#1"
  end
end

