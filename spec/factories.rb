FactoryGirl.define do
  factory :category do
    name "ooga"
  end

  factory :sub_category do
    category_id 123
    name "ooga#1"
  end

  factory :artist do
    sub_category_id 123
    name "ooga#2"
    end

  factory :image do
    artist_id 123
    title "ooga#3"
    url "some url"
  end
end

